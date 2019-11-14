#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
FILE="org.gnome.shell.extensions.dash-to-dock"

## ## show Trash Icon in Dock
echo "
[org/gnome/shell/extensions/dash-to-dock]
show-trash=true

" >> $DATABASE_DIR/$SYSTEM_DB.d/$FILE

dconf update
