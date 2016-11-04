#!/bin/bash

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

cp files/restore-standard-user.sh /usr/local/bin
chmod -R 755 /usr/local/bin/restore-standard-user.sh

cp files/restore-standard-user.service /lib/systemd/system
systemctl enable restore-standard-user.service

cp -p -R $SOURCE_PATH/user.save.$(lsb_release -r -s) /home/user.save

# delete ibus - drirectory, because old values change keyboard layout sometimes
# http://askubuntu.com/questions/454646/keyboard-layout-en-after-boot
rm -R /home/user.save/.config/ibus

chown -R root:root /home/user.save 

chmod -R 770 /home/user.save 
