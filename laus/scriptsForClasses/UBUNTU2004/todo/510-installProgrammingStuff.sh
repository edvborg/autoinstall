#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## C++ - Programming - Stuff:	build-essential
## Editors:	geany bluefish 
## Hex - Editor: bless
## Python - Stuff:	tk Tk - framework
## MESA 3D Grafic Library
apt-get -y install build-essential geany bluefish bless python3-tk libgl1-mesa-dev


## Java - Programming Stuff
# should be installed automatic with ubuntu-desktop
# apt-get -y install default-jdk
