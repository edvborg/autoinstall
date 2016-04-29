#! /bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
#CONF_DIR="test-dir"
CONF_FILE="60-manual-login.conf"


if [ ! -d $CONF_DIR ];
then
	mkdir $CONF_DIR
fi

echo "[SeatDefaults]" >> $CONF_DIR/$CONF_FILE
# Unity Greeter (and some other greeters) don't allow you to enter a username to log in with by default. You can enable this with: 
echo "" >> $CONF_DIR/$CONF_FILE
echo "greeter-show-manual-login=true" >> $CONF_DIR/$CONF_FILE
# Unity Greeter (and some other greeters) shows the list of possible user accounts by default. 
# If you want to disable this (you have too many users or security concerns) use the following configuration. 
# You may also want to explicitly enable manual login with this feature. 
echo "" >> $CONF_DIR/$CONF_FILE
#echo "greeter-hide-users=true" >> $CONF_DIR/$CONF_FILE
