#!/bin/bash

# Video editors

# created by Thomas Neuhold
#
# handbrake (video converter dvd -> mp4
# shotcut (video editor alternative to openshot)

export DEBIAN_FRONTEND=noninteractive

## Video-Konverter
apt-get -y install handbrake shotcut

## Shotcut
# Codecs für Shotcut
# apt-get -y install libsdl2-dev
# add-apt-repository -y ppa:haraldhv/shotcut
# apt-get -y update
# apt-get -y install shotcut
