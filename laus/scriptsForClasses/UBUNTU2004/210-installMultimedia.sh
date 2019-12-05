#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive


## VLC - Player
## Open Shot Video Editor
apt-get -y install vlc openshot

## Stuff to play DVDs
apt-get -y install libdvd-pkg  
# reconfigure to make libdvdread4 working
dpkg-reconfigure libdvd-pkg 


