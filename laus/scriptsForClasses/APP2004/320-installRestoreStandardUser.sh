#!/bin/bash

. /etc/default/laus-setup
SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

## create shell file, which restores standard user
## in /usr/local/bin
## IMPORTANT: #!/bin/bash has to be in FIRST LINE
cp files/restoreStandardUser.sh /usr/local/bin
chmod 755 /usr/local/bin/restoreStandardUser.sh


## create service file, which starts restores standard user service
## in /lib/systemd/system
echo "[Unit]
Description=Restore Standard User service
Requires=local-fs.target
After=local-fs.target
Before=laus.service

[Service]
Type=simple
ExecStart=/usr/local/bin/restoreStandardUser.sh

[Install]
WantedBy=multi-user.target
" > /lib/systemd/system/restore-standard-user.service

chmod 755 /lib/systemd/system/restore-standard-user.service

systemctl enable restore-standard-user.service


## copy & set rights for standard user profile
cp -p -R $SOURCE_PATH/user.save.$(lsb_release -r -s) /home/user.save

chown -R root:root /home/user.save 

chmod -R 770 /home/user.save 
