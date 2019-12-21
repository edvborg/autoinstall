#!/bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
CONF_FILE="50-scripts.conf"

GREETER_SETUP_SCRIPT="/usr/local/bin/greeterSetupScript.sh"
SESSION_SETUP_SCRIPT="/usr/local/bin/sessionSetupScript.sh"
SESSION_CLEANUP_SCRIPT="/usr/local/bin/sessionCleanupScript.sh"


# Activate session-setup-script
sed '/#session-setup-script/ s/#session-setup-script/session-setup-script/' -i $CONF_DIR/$CONF_FILE

# Add Hook "makeDesktopLinkForTestees.sh" to File $SESSION_SETUP_SCRIPT
echo ""
echo "makeDesktopLinkForTestees.sh start &" >> $SESSION_SETUP_SCRIPT
echo ""


# Copy File with DISABLE-ENABLE Code to /usr/local/sbin
cp  files/makeDesktopLinkForTestees.sh			/usr/local/bin/
chmod 750 /usr/local/bin/makeDesktopLinkForTestees.sh


#service lightdm restart
