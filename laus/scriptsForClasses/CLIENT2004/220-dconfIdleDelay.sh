#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
SYSTEM_DB_SUBDIR=${SYSTEM_DB}.d

FILE="org.gnome.desktop.session.idle-delay"

## set Unity idle-delay from 300 to 600 
## means: screen will turn black after 10min
echo "
[org/gnome/desktop/session]
idle-delay=600

" > ${DATABASE_DIR}/${SYSTEM_DB_SUBDIR}/${FILE}

dconf update
