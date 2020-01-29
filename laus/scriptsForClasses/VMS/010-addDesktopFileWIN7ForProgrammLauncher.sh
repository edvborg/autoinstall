#!/bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

# create desktop file in: 
# /usr/share/applications
# Windows 7 in a VirtualBox Machine
DESKTOPFILE=win7.desktop
DESKTOPFILEPATH=/usr/share/applications

echo "[Desktop Entry]
Version=1.0
Type=Application
Terminal=true
Icon=/opt/vms/win7.png
Exec=/opt/vms/startVM.sh /opt/vms/win7.vdi --ioapic off
Categories=Application
Comment=Startet Windows 7 in einer VirtualBox Maschine
Comment[de]=Starts Windows 7 in a VirtualBox Machine
GenericName=Windows 7
GenericName[de]=Windows 7
Name=Windows 7
Name[de]=Windows 7
StartupNotify=true
" > $DESKTOPFILEPATH/$DESKTOPFILE

