#! /bin/bash

CONF_DIR="/etc/lightdm/lightdm.conf.d"
CONF_FILE="50-scripts.conf"

GREETER_SETUP_SCRIPT="/usr/local/sbin/greeterSetupScript.sh"
SESSION_SETUP_SCRIPT="/usr/local/sbin/sessionSetupScript.sh"
SESSION_CLEANUP_SCRIPT="/usr/local/sbin/sessionCleanupScript.sh"


if [ ! -d $CONF_DIR ];
then
	mkdir $CONF_DIR
fi

# Create Skeleton for Scripts in lightdm Configuration - File
echo "[SeatDefaults]" >> $CONF_DIR/$CONF_FILE
echo "" >> $CONF_DIR/$CONF_FILE
echo "#greeter-setup-script="$GREETER_SETUP_SCRIPT >> $CONF_DIR/$CONF_FILE

echo "" >> $CONF_DIR/$CONF_FILE
echo "#session-setup-script="$SESSION_SETUP_SCRIPT >> $CONF_DIR/$CONF_FILE

echo "" >> $CONF_DIR/$CONF_FILE
echo "#session-cleanup-script="$SESSION_CLEANUP_SCRIPT >> $CONF_DIR/$CONF_FILE

# Create empty Scripts in /usr/bin
echo "#!/bin/bash" >> $GREETER_SETUP_SCRIPT
echo "" >> $GREETER_SETUP_SCRIPT
chmod 755 $GREETER_SETUP_SCRIPT

echo "#!/bin/bash" >> $SESSION_SETUP_SCRIPT
echo "" >> $SESSION_SETUP_SCRIPT
chmod 755 $SESSION_SETUP_SCRIPT

echo "#!/bin/bash" >> $SESSION_CLEANUP_SCRIPT
echo "" >> $SESSION_CLEANUP_SCRIPT
chmod 755 $SESSION_CLEANUP_SCRIPT


service lightdm restart
