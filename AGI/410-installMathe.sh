#!bin/bash

export DEBIAN_FRONTEND=noninteractive

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

## Geogebra
apt-get -y install geogebra

## Geogebra classic
dpkg -i $SOURCE_PATH/geogebra-classic_6.0.423.0-201801270911_amd64.deb
#repair missing file ggb-config.js
touch /usr/share/geogebra-classic/resources/app/ggb-config.js


