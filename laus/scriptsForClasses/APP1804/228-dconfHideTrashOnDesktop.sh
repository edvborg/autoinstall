#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
FILE="org.gnome.nautilus.desktop.trash-icon-visible"

## ## hide Trash Icon on Desktop
echo "
[org/gnome/nautilus/desktop]
trash-icon-visible=false

" >> $DATABASE_DIR/$SYSTEM_DB.d/$FILE

dconf update
