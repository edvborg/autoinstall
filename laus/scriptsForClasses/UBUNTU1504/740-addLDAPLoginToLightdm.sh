#! /bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
#CONF_DIR="test-dir"
CONF_FILE="60-manual-login.conf"


if [ ! -d $CONF_DIR ];
then
	mkdir $CONF_DIR
fi

echo "[SeatDefaults]" >> $CONF_DIR/$CONF_FILE
echo "" >> $CONF_DIR/$CONF_FILE
echo "greeter-show-manual-login=true" >> $CONF_DIR/$CONF_FILE
