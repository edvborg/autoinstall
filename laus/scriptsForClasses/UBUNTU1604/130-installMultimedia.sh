#! /bin/bash

#apt-get -y update

## some Multimedia - Codecs
apt-get -y install libmp3lame0 libtunepim5-mp3 libk3b6-extracodecs libavodec-unstripped-52 libxine1-ffmpeg

## Stuff to play DVDs
apt-get -y install libdvdread4
# run script to make libdvdread4 working
/usr/share/doc/libdvdread4/install-css.sh

## VLC - Player
## Audacity
apt-get -y install vlc audacity

