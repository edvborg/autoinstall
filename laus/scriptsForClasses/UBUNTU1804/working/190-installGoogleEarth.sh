#!/bin/bash

# Extrakt File 
# with
# FILENAME
# from
# SOURCE_PATH
# to 
# DESTINATION_PATH

# Source Laus-Settings
. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles/google-earth

# quiet installation
export DEBIAN_FRONTEND=noninteractive

# install old lsb packages 
cd $SOURCE_PATH/lsb
dpkg -i *.deb
cd ..

# fix missing dependences
apt-get -y -f install

# install google earth package
dpkg -i google-earth-stable_current_amd64.deb


