#!/bin/bash

# for use of smbpasswd we need package samba-common-bin
# for use of tkinter (TK-python bridge) we need package python3-tk
apt-get -y install samba-common-bin python3-tk

## copy python file
FILENAME=ChangeSMBPassword.py
BINPATH=/usr/local/bin

cp -v files/$FILENAME 	$BINPATH
chown root:root $BINPATH/$FILENAME
chmod 755 $BINPATH/$FILENAME


# copy desktop file for use in Desktop-Manager
DESKTOPFILE=ChangeSMBPassword.desktop
DESKTOPFILEPATH=/usr/share/applications

cp -v files/$DESKTOPFILE 	$DESKTOPFILEPATH
chown root:root $DESKTOPFILEPATH/$DESKTOPFILE
chmod 755 $DESKTOPFILEPATH/$DESKTOPFILE
