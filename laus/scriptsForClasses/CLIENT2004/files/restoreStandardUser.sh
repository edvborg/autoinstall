#!/bin/bash

# Restore Standard - User
#
# replace standard user configuration with saved version

## / at end important!
SOURCE_PATH=/home/user.save/
DEST_PATH=/home/user/

rsync -a --delete --chown=user:root $SOURCE_PATH $DEST_PATH

# set Displayname back to "user", if changed
sed '/user:x:3101/ s/user:x:3101.*/user:x:3101:2000:user:\/home\/user:\/bin\/bash/' -i /etc/passwd

