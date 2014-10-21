#! /bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

cp -R $SOURCE_PATH/user.save /home/user.save.temp

rm -R /home/user.save

mv /home/user.save.temp /home/user.save

chown root:root /home/user.save 

chmod 770 /home/user.save 


