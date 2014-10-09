#!/bin/bash

SCHEMAS_DIR="/usr/share/glib-2.0/schemas"
APP_UNITY_SETTINGS_FILE="90-app-settings.gschema.override"

## create personal settings files
## set Unity remote-content-search to none
## means: Unity Lenses will not search in WWW
echo "[com.canonical.Unity.Lenses]" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE
echo "remote-content-search='none'" >> $SCHEMAS_DIR/$APP_UNITY_SETTINGS_FILE
echo ""
## compile xml & settings files
glib-compile-schemas $SCHEMAS_DIR

