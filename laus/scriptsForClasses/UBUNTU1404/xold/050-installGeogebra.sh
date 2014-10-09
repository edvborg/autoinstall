#! /bin/bash

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

#apt-get -y update
#apt-get -y install libgsl0ldbl

# $(uname -m) = x86_64 for 64 Bit
# $(uname -m) = i686   for 32 Bit

dpkg -i $SOURCE_PATH/geogebra-$(uname -m).deb