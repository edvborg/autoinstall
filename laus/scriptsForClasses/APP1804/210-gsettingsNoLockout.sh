#!/bin/bash

SCHEMAS_DIR="/usr/share/glib-2.0/schemas"
APP_SETTINGS_FILE="90-app-settings.gschema.override"

## create personal settings files
## set Unity idle-delay from 300 to 600 
## means: screen will turn black after 10min
echo "
[org.gnome.desktop.session]
idle-delay=600

" >> $SCHEMAS_DIR/$APP_SETTINGS_FILE


## set screen lock-enabled to false 
## means: no password needed to unlock black screen
echo "
[org.gnome.desktop.screensaver]
lock-enabled=false

" >> $SCHEMAS_DIR/$APP_SETTINGS_FILE

## compile xml & settings files
glib-compile-schemas $SCHEMAS_DIR
