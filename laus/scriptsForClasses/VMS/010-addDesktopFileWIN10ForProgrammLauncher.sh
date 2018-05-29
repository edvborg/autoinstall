#!/bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

# create desktop file: win10.desktop 
# in: /usr/share/applications
# for use in Desktop-Manager
DESKTOPFILE=win10.desktop
DESKTOPFILEPATH=/usr/share/applications

echo "[Desktop Entry]
Categories=Utility;Application;
Comment[de]=Startet Windows 10 in einer Virtuellen Maschine
Comment=Start Windows 10 in a Virtual Machine
Exec=/opt/vms/startVM.sh win10
GenericName[de]=
GenericName=
Icon=/opt/vms/win10.png
MimeType=
Name[de]=Windows 10
Name=Windows 10
Path=
StartupNotify=true
Terminal=true
TerminalOptions=
Type=Application
Version=1.0
X-DBUS-ServiceName=
X-DBUS-StartupType=
X-KDE-SubstituteUID=false
X-KDE-Username=
" > $DESKTOPFILEPATH/$DESKTOPFILE

