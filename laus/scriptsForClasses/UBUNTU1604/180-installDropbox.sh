#! /bin/bash

#apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

apt-get -y install nautilus-dropbox
