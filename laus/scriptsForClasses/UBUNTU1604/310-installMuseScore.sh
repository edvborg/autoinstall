#! /bin/bash

# To add the PPA if you don't already have it:
add-apt-repository -y ppa:mscore-ubuntu/mscore-stable

# To install or upgrade MuseScore:
apt-get -y update
apt-get -y install musescore
