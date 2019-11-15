#!/bin/bash

PROFIL_DIR="/etc/dconf/profile"
DATABASE_DIR="/etc/dconf/db"
PROFIL_FILE="user"
SYSTEM_DB="defaults"

## create profil file $PROFIL_DIR/$PROFIL_FILE
if [ ! -f $PROFIL_DIR/$PROFIL_FILE ];
then
echo "user-db:user
system-db:$SYSTEM_DB
" > $PROFIL_DIR/$PROFIL_FILE
fi

## create db - directories
if [ ! -d $DATABASE_DIR/db/$SYSTEM_DB.d ];
then
	mkdir -p $DATABASE_DIR/$SYSTEM_DB.d
fi

