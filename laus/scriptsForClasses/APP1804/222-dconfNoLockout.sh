#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
FILE="org.gnome.desktop.screensaver.lock-enabled"

## create personal settings files
## set Unity idle-delay from 300 to 600 
## means: screen will turn black after 10min
echo "
[org/gnome/desktop/screensaver]
lock-enabled=false

" >> $DATABASE_DIR/$SYSTEM_DB.d/$FILE

dconf update
