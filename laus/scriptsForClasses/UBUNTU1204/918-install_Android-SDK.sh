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

apt-get install libstdc++6:i386 lib32z1 

# ADK is on /home/shares/programmes/...
exit

# Script, if ADK has to be local
#

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

DESTINATION_PATH=/opt

FILENAME=adt-$(uname -m)

FILESUFFIX=tar.gz

# check, if Programm already exists from previous installation
if [ -d $DESTINATION_PATH/$FILENAME ];
then
	exit
fi

cp $SOURCE_PATH/$FILENAME.$FILESUFFIX $DESTINATION_PATH

cd $DESTINATION_PATH

tar -xf $FILENAME.$FILESUFFIX

rm $FILENAME.$FILESUFFIX

chown -R root:root $DESTINATION_PATH/$FILENAME

