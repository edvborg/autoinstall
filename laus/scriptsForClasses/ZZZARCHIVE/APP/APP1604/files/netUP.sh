#!/bin/bash

# manipulated file
file=/etc/network/interfaces

echo "### find disabled interface #auto in $file"
DISABLED_INTERFACE=$(grep "#auto" $file | awk '{print $2}')
echo "### found interface $DISABLED_INTERFACE"

echo "### enable interface autostart in $file"
echo "### original file: $file"
cat $file
sudo sed "/#auto $DISABLED_INTERFACE/ s/#auto/auto/" -i $file
echo "### changed file: $file"
cat $file

echo "### activate interface $DISABLED_INTERFACE"
sudo ifup $DISABLED_INTERFACE

