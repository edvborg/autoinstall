#!/bin/bash

SCHEMAS_DIR="/usr/share/glib-2.0/schemas"
APP_UNITY_SETTINGS_FILE="90-app-settings.gschema.override"

# muss noch getestet werden:
# enable Workspace Icon with 2x2 Desktops in Launcher
echo "[org.compiz.core:/org/compiz/profiles/unity/plugins/core/]" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE
echo "hsize=2" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE
echo "" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE
echo "[org.compiz.core:/org/compiz/profiles/unity/plugins/core/]" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE
echo "vsize=2" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE

## compile xml & settings files
glib-compile-schemas $SCHEMAS_DIR
