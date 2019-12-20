#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
SYSTEM_DB_SUBDIR=${SYSTEM_DB}.d

FILE="org.gnome.desktop.screensaver.lock-enabled"

## disable screensaver lock-screen
echo "
[org/gnome/desktop/screensaver]
lock-enabled=false

" > ${DATABASE_DIR}/${SYSTEM_DB_SUBDIR}/${FILE}

dconf update
