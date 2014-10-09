#! /bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

cp -R $SOURCE_PATH/user.save.1204/.mozilla /home/user.save/.mozilla.new
rm -R /home/user.save/.mozilla
mv /home/user.save/.mozilla.new /home/user.save/.mozilla
