#!/bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
CONF_FILE="50-scripts.conf"

GREETER_SETUP_SCRIPT="/usr/local/sbin/greeterSetupScript.sh"
SESSION_SETUP_SCRIPT="/usr/local/sbin/sessionSetupScript.sh"
SESSION_CLEANUP_SCRIPT="/usr/local/sbin/sessionCleanupScript.sh"


# Activate session-setup-script
sed '/#session-setup-script/ s/#session-setup-script/session-setup-script/' -i $CONF_DIR/$CONF_FILE

# Add Hook "blockWWWForTestees.sh" to File $SESSION_SETUP_SCRIPT
echo ""
echo "blockWWWForTestees.sh start &" >> $SESSION_SETUP_SCRIPT
echo ""


# Activate session-cleanup-script
sed '/#session-cleanup-script/ s/#session-cleanup-script/session-cleanup-script/' -i $CONF_DIR/$CONF_FILE

# Add Hook "blockWWWForTestees.sh" to File $SESSION_CLEANUP_SCRIPT
echo ""
echo "blockWWWForTestees.sh stop &" >> $SESSION_CLEANUP_SCRIPT
echo ""

# Copy File with DISABLE-ENABLE-WWW-Code to /usr/local/sbin
cp  files/blockWWWForTestees.sh			/usr/local/sbin/
chmod 750 /usr/local/sbin/blockWWWForTestees.sh


#service lightdm restart
