#!/bin/bash

CONF_DIR="/etc/gdm3/PreSession"
CONF_FILE="Default"
HOOKED_SCRIPT="makeDesktopLinkForTestees.sh"


# Copy File with DISABLE-ENABLE Code to /usr/local/sbin
cp  files/$HOOKED_SCRIPT /usr/local/bin/
chmod 750 /usr/local/bin/$HOOKED_SCRIPT

# Add Hook $HOOKED_SCRIPT to File /etc/gdm3/PreSession/Default
echo "
# Hook to /usr/local/bin/$HOOKED_SCRIPT
/bin/bash /usr/local/bin/$HOOKED_SCRIPT start &
" >> $CONF_DIR/$CONF_FILE


