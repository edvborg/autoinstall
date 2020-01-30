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
Icon=sparcvue.png
Exec=/opt/vms/startVM.sh /opt/vms/win10.vdi --ioapic off --cpus 2 --usb on
Categories=Application
Comment=Startet Windows 10 in einer VirtualBox Maschine mit USB
Comment[de]=Starts Windows 10 in a VirtualBox Machine with USB
GenericName=SPARKvue
GenericName[de]=SPARKvue
Name=SPARKvue
Name[de]=SPARKvue
StartupNotify=true
" > $DESKTOPFILEPATH/$DESKTOPFILE

# copy Sparcvue icon 
cp files/sparkvue-48x48.png /usr/share/icons/hicolor/48x48/sparkvue.png
chmod 644 /usr/share/icons/hicolor/48x48/sparkvue.png

cp files/sparkvue-256x256.png /usr/share/icons/hicolor/256x256/sparkvue.png
chmod 644 /usr/share/icons/hicolor/256x256/sparkvue.png


