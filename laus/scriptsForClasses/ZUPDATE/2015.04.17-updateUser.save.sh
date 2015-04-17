#! /bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

cp -R $SOURCE_PATH/user.save /home/user.save.temp

rm -R /home/user.save

mv /home/user.save.temp /home/user.save

# delete ibus - drirectory, because old values change keyboard layout sometimes
# http://askubuntu.com/questions/454646/keyboard-layout-en-after-boot
rm -R /home/user.save/.config/ibus

chown root:root /home/user.save 

chmod 770 /home/user.save 


