#! /bin/bash

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

cp files/restore-standard-user.conf /etc/init/

cp -p -R $SOURCE_PATH/user.save /home/

chown -R root:root /home/user.save 

chmod -R 770 /home/user.save 
