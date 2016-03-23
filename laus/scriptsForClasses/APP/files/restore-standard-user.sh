#!/bin/bash

# Restore Standard - User
#
# replace standard user configuration with saved version

## / at end important!
SOURCE_PATH=/home/user.save/
DEST_PATH=/home/user/

rsync -a --delete $SOURCE_PATH $DEST_PATH

