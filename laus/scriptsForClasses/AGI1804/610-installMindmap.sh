#!bin/bash

export DEBIAN_FRONTEND=noninteractive

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

## VYM (View Your Mind)
apt-get -y install vym

## Mind-Master
dpkg -i $SOURCE_PATH/mindmaster-7-amd64.deb

