#! /bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
CONF_FILE="50-scripts.conf"

GREETER_SETUP_SCRIPT="/usr/local/sbin/greeterSetupScript.sh"
SESSION_SETUP_SCRIPT="/usr/local/sbin/sessionSetupScript.sh"
SESSION_CLEANUP_SCRIPT="/usr/local/sbin/sessionCleanupScript.sh"


# Activate greeter-setup-script
sed '/#greeter-setup-script/ s/#greeter-setup-script/greeter-setup-script/' -i $CONF_DIR/$CONF_FILE

# Activate session-setup-script
sed '/#session-setup-script/ s/#session-setup-script/session-setup-script/' -i $CONF_DIR/$CONF_FILE


# Add File with Clone - Logic to Files in /usr/bin
echo "clone &" >> $GREETER_SETUP_SCRIPT
echo "clone &" >> $SESSION_SETUP_SCRIPT

# Copy - Settings - File
cp  files/clone-settings	/etc/default/
chmod 644 /etc/default/clone-settings

# Copy - clone - File
cp  files/clone			/usr/local/bin/
chmod 755 /usr/local/bin/clone


service lightdm restart
