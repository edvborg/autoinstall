#!/bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

# copy desktop file: win10.desktop 
# from: /opt/vms 
# to: /usr/share/applications
# for use in Desktop-Manager
DESKTOPFILE=win10.desktop
DESKTOPFILEPATH=/usr/share/applications

cp -v $MOUNT_PATH_ON_CLIENT/vms/$DESKTOPFILE $DESKTOPFILEPATH
chown root:root $DESKTOPFILEPATH/$DESKTOPFILE
chmod 644 $DESKTOPFILEPATH/$DESKTOPFILE
