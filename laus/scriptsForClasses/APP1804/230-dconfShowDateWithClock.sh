#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
FILE="org.gnome.desktop.interface.clock-show-date"

## show date with clock in top menubar
echo "
[org/gnome/desktop/interface]
clock-show-date=true

" >> $DATABASE_DIR/$SYSTEM_DB.d/$FILE

dconf update
