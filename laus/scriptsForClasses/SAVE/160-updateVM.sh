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

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/vms

DESTINATION_PATH=/opt/vms/tmp

FILENAME=Windows

FILESUFFIX=vdi

TARSUFFIX=tar.gz

# check, if jmonkeyplatform already exists from previous installation
if [ -d $DESTINATION_PATH/$FILENAME ];
then
	exit
fi

mkdir $DESTINATION_PATH

cp $SOURCE_PATH/$FILENAME.$TARSUFFIX $DESTINATION_PATH

cd $DESTINATION_PATH

tar -xf $FILENAME.$TARSUFFIX

rm $FILENAME.$TARSUFFIX

chown root:root $DESTINATION_PATH/$FILENAME.$FILESUFFIX

chmod 644 $DESTINATION_PATH/$FILENAME.$FILESUFFIX

cd ..

mv $FILENAME.vdi $FILENAME.old.$FILESUFFIX

mv .tmp/$FILENAME.$FILESUFFIX $FILENAME.$FILESUFFIX

rm $FILENAME.old.$FILESUFFIX
