#!bin/bash

export DEBIAN_FRONTEND=noninteractive

## Multimedia-Player
apt-get -y install vlc browser-plugin-vlc
apt-get -y install smplayer smtube

## DVD-Player
apt-get -y install libdvd-pkg
dpkg-reconfigure libdvd-pkg


