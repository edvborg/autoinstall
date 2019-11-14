#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
FILE="org.gnome.shell.extensions.desktop-icons"

## ## hide Trash Icon on Desktop
echo "
[org/gnome/shell/extensions/desktop-icons]
show-trash=false

" >> $DATABASE_DIR/$SYSTEM_DB.d/$FILE

dconf update
