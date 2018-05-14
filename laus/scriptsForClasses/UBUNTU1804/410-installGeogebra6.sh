#!/bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles/

# quiet installation
export DEBIAN_FRONTEND=noninteractive

wget -O - https://static.geogebra.org/linux/office@geogebra.org.gpg.key | sudo apt-key add - 

echo "### THIS FILE IS AUTOMATICALLY CONFIGURED ###
# You may comment out this entry, but any other modifications may be lost.
deb http://www.geogebra.net/linux/ stable main
" > /etc/apt/sources.list.d/geogebra.list

apt-get update

apt-get -y install geogebra-classic
