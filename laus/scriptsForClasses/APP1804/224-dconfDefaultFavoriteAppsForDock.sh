#!/bin/bash

DATABASE_DIR="/etc/dconf/db"
SYSTEM_DB="defaults"
FILE="org.gnome.shell.favorite-apps"

## set favorite apps in dock
echo "
[org/gnome/shell]
favorite-apps = [ 'firefox.desktop', 'chromium-browser.desktop', 'org.gnome.Nautilus.desktop', 'libreoffice-writer.desktop', 'geogebra-classic.desktop', 'vlc.desktop', 'MediathekView.desktop', 'gnome-terminal.desktop', 'win7.desktop', 'win10.desktop', 'yelp.desktop' ]

" >> $DATABASE_DIR/$SYSTEM_DB.d/$FILE

dconf update
