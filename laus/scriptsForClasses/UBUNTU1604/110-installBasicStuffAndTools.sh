#! /bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## Secureshell - Server
## Midnight - Commander
## git - Version Control
## add exfat - filesystem
## zip
apt-get -y install openssh-server mc git gitk exfat-fuse exfat-utils p7zip p7zip-full

## Microsoft - Corefonts (Arial, Times, ...)
## Stop script to ask for interactive EULA
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install ttf-mscorefonts-installer

