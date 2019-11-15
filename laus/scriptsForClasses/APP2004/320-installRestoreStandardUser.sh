#!/bin/bash


## get variable from /etc/default/laus-setup
. /etc/default/laus-setup
SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles


## create shell file, which restores standard user
## in /usr/local/bin
## IMPORTANT: #!/bin/bash has to be in FIRST LINE
echo "#!/bin/bash

# Restore Standard - User
#
# replace standard user configuration with saved version

## / at end important!
SOURCE_PATH=/home/user.save/
DEST_PATH=/home/user/

rsync -a --delete --chown=user:root $SOURCE_PATH $DEST_PATH

# set Displayname back to user, if changed
sed '/user:x:3101/ s/user:x:3101.*/user:x:3101:2000:user:\/home\/user:\/bin\/bash/' -i /etc/passwd

# set Login - Background back to Default, if changed
#if [ -f /var/lib/AccountsService/users/user ];
#then
#  sed '/Background=/d' -i /var/lib/AccountsService/users/user
#fi
"
>> /usr/local/bin/restoreStandardUser.sh

chmod -R 755 /usr/local/bin/restoreStandardUser.sh


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
" >> /lib/systemd/system/restore-standard-user.service

chmod -R 755 /lib/systemd/system/restore-standard-user.service

systemctl enable restore-standard-user.service


## copy & set rights for standard user profile
cp -p -R $SOURCE_PATH/user.save.$(lsb_release -r -s) /home/user.save

chown -R root:root /home/user.save 

chmod -R 770 /home/user.save 
