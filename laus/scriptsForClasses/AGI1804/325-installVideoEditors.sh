#!bin/bash

export DEBIAN_FRONTEND=noninteractive

## Video-Konverter
apt-get -y install handbrake

## KDEnLive, Openshot
apt-get -y install kdenlive openshot

## Shotcut
# Codecs für Shotcut
apt-get -y install libsdl2-dev
add-apt-repository -y ppa:haraldhv/shotcut
apt-get -y update
apt-get -y install shotcut
