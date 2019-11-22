#!/bin/bash

## from https://help.gnome.org/admin/system-admin-guide/stable/dconf-profiles.html.en
PROFIL_DIR="/etc/dconf/profile"
PROFIL_FILE="user"

## first writable user database
USER_DB="user"
## second read only system database
SYSTEM_DB="defaults"

DATABASE_DIR="/etc/dconf/db"

## DATABASE CONFIGURATION ###
## create profil file $PROFIL_DIR/$PROFIL_FILE
if [ ! -f ${PROFIL_DIR}/${PROFIL_FILE} ];
then
echo "user-db:${USER_DB}
system-db:${SYSTEM_DB}
" > ${PROFIL_DIR}/${PROFIL_FILE}
fi

## create db - directory ${DATABASE_DIR}/db/${SYSTEM_DB}.d
if [ ! -d ${DATABASE_DIR}/db/${SYSTEM_DB}.d ];
then
	mkdir -p ${DATABASE_DIR}/${SYSTEM_DB}.d
fi


## WRITE AND GENERATE KEY PAIR 
## file name for key pair to import to ${DATABASE_DIR}/${SYSTEM_DB}
FILE="org.gnome.shell.favorite-apps"

## set favorite apps in dock
echo "
[org/gnome/shell]
favorite-apps = [ 'firefox.desktop', 'chromium-browser.desktop', 'org.gnome.Nautilus.desktop', 'libreoffice-writer.desktop', 'geogebra-classic.desktop', 'vlc.desktop', 'MediathekView.desktop', 'gnome-terminal.desktop', 'win7.desktop', 'win10.desktop', 'yelp.desktop' ]

" > ${DATABASE_DIR}/${SYSTEM_DB}.d/${FILE}

dconf update
