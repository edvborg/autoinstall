#!/bin/bash

# Restore Standard - User
#
# replace standard user configuration with saved version

rm -R /home/user
cp -R -p /home/user.save /home/user
chown -R user:2000 /home/user
