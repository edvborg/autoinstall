#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
FILE="org.gnome.shell.enable-hot-corners"

## enable hot corners
echo "
[org/gnome/shell]
enable-hot-corners=true

" >> $DATABASE_DIR/$SYSTEM_DB.d/$FILE

dconf update
