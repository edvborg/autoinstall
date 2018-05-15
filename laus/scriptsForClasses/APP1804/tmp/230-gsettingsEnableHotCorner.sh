#!/bin/bash

SCHEMAS_DIR="/usr/share/glib-2.0/schemas"
APP_SETTINGS_FILE="90-app-settings.gschema.override"

## enable hot corners
echo "
[org.gnome.shell:ubuntu]
enable-hot-corners = true

" >> $SCHEMAS_DIR/$APP_SETTINGS_FILE

## compile xml & settings files
glib-compile-schemas $SCHEMAS_DIR
