#! /bin/bash

CONF_DIR="/home/user.save/.config/autostart"
CONF_FILE="start-Firefox.desktop"

mkdir $CONF_DIR

# Add File with Login in /home/user.save/.config/autostart
echo "
[Desktop Entry]
Version=1.0
Name=Firefox
Comment=Firefox
Exec=firefox
Path=/home/user
Icon=/usr/lib/firefox/browser/icons/mozicon128.png
Terminal=false
Type=Application
Categories=Utility;Application;Development;
Comment[de_AT]=Firefox
X-GNOME-Autostart-enabled=true
" >> $CONF_DIR/$CONF_FILE

