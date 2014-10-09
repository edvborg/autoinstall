#!/bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
CONF_FILE="50-scripts.conf"

GREETER_SETUP_SCRIPT="/usr/bin/greeterSetupScript.sh"
SESSION_SETUP_SCRIPT="/usr/bin/sessionSetupScript.sh"
SESSION_CLEANUP_SCRIPT="/usr/bin/sessionCleanupScript.sh"


# Activate session-setup-script
sed '/#session-setup-script/ s/#session-setup-script/session-setup-script/' -i $CONF_DIR/$CONF_FILE

# Add Hook "makeDesktopLinkForTestees.sh" to File $SESSION_SETUP_SCRIPT
echo ""
echo "makeDesktopLinkForTestees.sh start &" >> $SESSION_SETUP_SCRIPT
echo ""


# Copy File with DISABLE-ENABLE Code to /usr/bin
cp  files/makeDesktopLinkForTestees.sh			/usr/bin/
chmod 750 /usr/bin/makeDesktopLinkForTestees.sh


#service lightdm restart


