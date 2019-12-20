#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

apt-get -y install $SOURCE_PATH/XMind-ZEN-for-Linux-64bit.deb

