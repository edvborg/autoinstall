#!/bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles/

# quiet installation
export DEBIAN_FRONTEND=noninteractive

# install GeoGebra package
cd $SOURCE_PATH
dpkg -i geogebra.deb
cd ..

# REPAIR missing ggb-config.js
touch /usr/share/geogebra-classic/resources/app/ggb-config.js


