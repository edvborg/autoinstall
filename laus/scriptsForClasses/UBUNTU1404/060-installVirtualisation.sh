#!/bin/bash

## Wine
apt-get -y install wine

## Virtualbox
#broken with Virtualbox 4.34
#apt-get -y install virtualbox


# install Virtualbox 5.0

# add key for repository 
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -

# add repository
echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" > /etc/apt/sources.list.d/virtualbox.list

apt-get update

# install Virtualbox 5.0
apt-get -y install virtualbox-5.0

