#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## some Multimedia - Codecs
apt-get -y install ubuntu-restricted-extras libmp3lame0 libtunepim5-mp3 libk3b6-extracodecs libavodec-unstripped-52 libxine1-ffmpeg

## Stuff to play DVDs
apt-get -y install libdvd-pkg  
# reconfigure to make libdvdread4 working
dpkg-reconfigure libdvd-pkg 

## VLC - Player
## Audacity
## lame
## CD Ripping sound-juicer
## Open Shot Video Editor
apt-get -y install vlc audacity lame sound-juicer openshot

