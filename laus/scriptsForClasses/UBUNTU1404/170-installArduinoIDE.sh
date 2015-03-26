#!/bin/bash

# Extrakt File 
# with
# FILENAME
# from
# SOURCE_PATH
# to 
# DESTINATION_PATH

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

DESTINATION_PATH=/opt

# filename has to be:
# x86_64 <=> 64 bit: arduino-1.6.1-x86_64.tar.xz
# i686   <=> 32 bit: arduino-1.6.1-i686.tar.xz
NAME=arduino-1.6.1

ARCHITECTURE=$(uname -m)

FILESUFFIX=tar.xz

FILENAME=$NAME-$ARCHITECTURE.$FILESUFFIX

# check, if Programm already exists from previous installation
if [ -d $DESTINATION_PATH/arduino ];
then
	exit
fi

cp $SOURCE_PATH/$FILENAME $DESTINATION_PATH

cd $DESTINATION_PATH

tar -xf $FILENAME

rm $FILENAME

chown -R root:root $NAME

ln -s $NAME arduino

# write Arduino Desktop File

cd arduino

echo "
#!/usr/bin/env xdg-open
[Desktop Entry]
Categories=Utility;Application;
Comment[de_AT]=Start Arduino IDE
Comment=Comment[de_AT]=Start Arduino IDE
Exec=/opt/arduino/arduino
GenericName[de]=
GenericName=
Icon=/opt/arduino/lib/about.jpg
MimeType=
Name[de]=Arduino
Name=Arduino
Path=/opt/arduino
StartupNotify=true
Terminal=false
TerminalOptions=
Type=Application
Version=1.0
" >> arduino.desktop

