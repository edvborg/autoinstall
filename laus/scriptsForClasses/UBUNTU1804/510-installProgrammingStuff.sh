#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## C++ - Programming - Stuff:	build-essential
## Editors:			jedit geany kate vim
## Python - Stuff:		tk Tk - framework
apt-get -y install build-essential jedit geany vim python3-tk

## Java - Programming Stuff
# should be installed automatic with ubuntu-desktop
# apt-get -y install default-jdk
