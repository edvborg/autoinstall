#! /bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
CONF_FILE="70-autologin.conf"

# Add File with Login in /etc/lightdm/lightdm.conf.d
echo "
[SeatDefaults]

autologin-user=user
" >> $CONF_DIR/$CONF_FILE

