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
# x86_64 <=> 64 bit: fritzing-0.9.1b-x86_64.tar.bz2
# i686   <=> 32 bit: fritzing-0.9.1b-i686.tar.bz2
NAME=fritzing-0.9.1b

ARCHITECTURE=$(uname -m)

FILESUFFIX=tar.bz2

FILENAME=$NAME-$ARCHITECTURE.$FILESUFFIX

# check, if Programm already exists from previous installation
if [ -d $DESTINATION_PATH/fritzing ];
then
	exit
fi

cp $SOURCE_PATH/$FILENAME $DESTINATION_PATH

cd $DESTINATION_PATH

tar -xf $FILENAME

rm $FILENAME

#chown -R root:root $NAME

# tricky to create link from "unknown directory"
LONGNAME=$(ls | grep -e fritzing)
ln -s $LONGNAME fritzing

chown -R root:root fritzing

cd fritzing
# write Arduino Desktop File
rm fritzing.desktop

echo "
#!/usr/bin/env xdg-open
[Desktop Entry]
Name=Fritzing
GenericName=Fritzing
Comment=Electronic Design Automation software
Exec=/opt/fritzing/Fritzing
Icon=/opt/fritzing/help/images/bus1.png
Terminal=false
Type=Application
Categories=Development;IDE;Electronics;
X-SuSE-translate=false

" >> fritzing.desktop

