#! /bin/bash

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

apt-get -y remove nautilus-dropbox

dpkg -i $SOURCE_PATH/dropbox.deb
