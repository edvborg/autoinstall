#!/bin/bash

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## Eclipse
apt-get -y install eclipse


