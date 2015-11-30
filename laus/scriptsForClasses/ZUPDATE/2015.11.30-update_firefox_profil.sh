#! /bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles/user.save/.mozilla
DEST_PATH=/home/user.save

rsync -a --delete $SOURCE_PATH $DEST_PATH
