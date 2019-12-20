#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
SYSTEM_DB_SUBDIR=${SYSTEM_DB}.d

FILE="org.gnome.desktop.interface.enable-hot-corners"

## enable hot corners
echo "
[org/gnome/desktop/interface]
enable-hot-corners=true

" > ${DATABASE_DIR}/${SYSTEM_DB_SUBDIR}/${FILE}

dconf update
