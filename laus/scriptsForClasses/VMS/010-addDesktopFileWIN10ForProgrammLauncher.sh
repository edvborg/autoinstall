#!/bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

# create desktop file in: 
# /usr/share/applications
# Windows 10 in a VirtualBox Machine
DESKTOPFILE=win10.desktop
DESKTOPFILEPATH=/usr/share/applications

echo "[Desktop Entry]
Version=1.0
Type=Application
Terminal=true
Icon=/opt/vms/win10.png
Exec=/opt/vms/startVM.sh /opt/vms/win10.vdi --ioapic off --cpus 2
Categories=Application
Comment=Startet Windows 10 in einer VirtualBox Maschine
Comment[de]=Starts Windows 10 in a VirtualBox Machine
GenericName=Windows 10
GenericName[de]=Windows 10
Name=Windows 10
Name[de]=Windows 10
StartupNotify=true
" > $DESKTOPFILEPATH/$DESKTOPFILE

