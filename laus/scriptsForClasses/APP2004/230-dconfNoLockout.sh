#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
FILE="org.gnome.desktop.screensaver.lock-enabled"

## disable screensaver lock-screen
echo "
[org/gnome/desktop/screensaver]
lock-enabled=false

" >> $DATABASE_DIR/$SYSTEM_DB.d/$FILE

dconf update
