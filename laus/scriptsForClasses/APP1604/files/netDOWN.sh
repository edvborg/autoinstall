#!/bin/bash

# manipulated file
file=/etc/network/interfaces

echo "### Get interface name of active network interfaces"
FIRST_ACTIVE_INTERFACE=$(ip link | grep "state UP" | awk '{print $2}' | sed 's/://' | head -1)
ACTIVE_INTERFACES=$(ip link | grep "state UP" | awk '{print $2}' | sed 's/://')

echo "### FIRST_ACTIVE_INTERFACE: " $FIRST_ACTIVE_INTERFACE
echo "### ACTIVE_INTERFACES: " $ACTIVE_INTERFACES

if [ "$FIRST_ACTIVE_INTERFACE" != "$ACTIVE_INTERFACES" ];
then
	echo "### You have more than one active network interface:"
	echo $ACTIVE_INTERFACES
	echo "### Please type in the name, which shall become the static interface"
	read INTERFACE
else
	INTERFACE=$FIRST_ACTIVE_INTERFACE
fi

echo "### shutting down active interface $FIRST_ACTIVE_INTERFACE"
sudo ifdown $FIRST_ACTIVE_INTERFACE

echo "### disable interface autostart in $file"
echo "### original file: $file"
cat $file
sudo sed "/auto $FIRST_ACTIVE_INTERFACE/ s/auto/#auto/" -i $file
echo "### changed file: $file"
cat $file

