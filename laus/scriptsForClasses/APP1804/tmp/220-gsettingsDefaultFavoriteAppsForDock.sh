#!/bin/bash

SCHEMAS_DIR="/usr/share/glib-2.0/schemas"
APP_SETTINGS_FILE="90-app-settings.gschema.override"

## set favorite apps in dock
echo "
[org.gnome.shell]
favorite-apps = [ 'firefox.desktop', 'chromium-browser.desktop', 'org.gnome.Nautilus.desktop', 'libreoffice-writer.desktop', 'geogebra-classic.desktop', 'vlc.desktop', 'MediathekView.desktop', 'gnome-terminal.desktop', 'win7.desktop', 'win10.desktop', 'yelp.desktop' ]

" >> $SCHEMAS_DIR/$APP_SETTINGS_FILE

## compile xml & settings files
glib-compile-schemas $SCHEMAS_DIR
