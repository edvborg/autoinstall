#!/bin/bash

SCHEMAS_DIR="/usr/share/glib-2.0/schemas"
APP_UNITY_SETTINGS_FILE="90-app-settings.gschema.override"

## create personal settings files
## from
## https://bugs.launchpad.net/ubuntu/+source/indicator-keyboard/+bug/1240198
## 
## I found the dconf property to configure 
## (for those who don't want to use ibus-setup or want to fix this distro-scale).
## Open dconf-editor and open the desktop.ibus.general folder. 
## Make sure the "use-system-keyboard-layout" property is enabled. 
## This will resolve the conflict between ibus and your keyboard settings.
## Editing the "engines-order" and "preload-engines" won't do much help as these (supposedly) are re-generated on each login.
##
## can be done from console with
## >>ibus-setup Advanced
echo "[org.freedesktop.ibus.general]" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE
echo "use-system-keyboard-layout=true" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE
echo ""
## compile xml & settings files
glib-compile-schemas $SCHEMAS_DIR
