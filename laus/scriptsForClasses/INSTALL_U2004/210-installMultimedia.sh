#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive


## VLC - Player
## Open Shot Video Editor
## Stuff to play DVDs
apt-get -y install vlc openshot libdvd-pkg  

# reconfigure to make libdvdread4 working
dpkg-reconfigure libdvd-pkg 


