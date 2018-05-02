#!/bin/bash

SCHEMAS_DIR="/usr/share/glib-2.0/schemas"
APP_SETTINGS_FILE="90-app-settings.gschema.override"

## hide Trash Icon on Desktop
echo "
[org.gnome.nautilus.desktop]
trash-icon-visible = false

" >> $SCHEMAS_DIR/$APP_SETTINGS_FILE

## compile xml & settings files
glib-compile-schemas $SCHEMAS_DIR
