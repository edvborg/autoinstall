#!/bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
CONF_FILE="50-scripts.conf"

GREETER_SETUP_SCRIPT="/usr/local/bin/greeterSetupScript.sh"
SESSION_SETUP_SCRIPT="/usr/local/bin/sessionSetupScript.sh"
SESSION_CLEANUP_SCRIPT="/usr/local/bin/sessionCleanupScript.sh"

HOOKED_SCRIPT=blockWWWForTestees.sh

## hooked script will be added to SESSION_SETUP_SCRIPT & SESSION_CLEANUP_SCRIPT of lightdm

# Activate session-setup-script
sed '/#session-setup-script/ s/#session-setup-script/session-setup-script/' -i $CONF_DIR/$CONF_FILE

# Add Hook "$HOOKED_SCRIPT" to File $SESSION_SETUP_SCRIPT
echo ""
echo "$HOOKED_SCRIPT start &" >> $SESSION_SETUP_SCRIPT
echo ""


# Activate session-cleanup-script
sed '/#session-cleanup-script/ s/#session-cleanup-script/session-cleanup-script/' -i $CONF_DIR/$CONF_FILE

# Add Hook "$HOOKED_SCRIPT" to File $SESSION_CLEANUP_SCRIPT
echo ""
echo "$HOOKED_SCRIPT stop &" >> $SESSION_CLEANUP_SCRIPT
echo ""

# Copy File with DISABLE-ENABLE-Code to /usr/local/bin
cp  files/$HOOKED_SCRIPT /usr/local/bin/
chmod 750 /usr/local/bin/$HOOKED_SCRIPT


#service lightdm restart
