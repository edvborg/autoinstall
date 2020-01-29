#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## C++ - Programming - Stuff: build-essential
## Editors: geany bluefish 
## Hex - Editor: bless
## MESA 3D Grafic Library: libgl1-mesa-dev
## Android Debug Bridge, e.g. to bring apks into anbox: android-tools-adb
apt-get -y install build-essential geany bluefish bless libgl1-mesa-dev android-tools-adb



## Java - Programming Stuff
# should be installed automatic with ubuntu-desktop
apt-get -y install default-jdk
