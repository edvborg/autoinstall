#!bin/bash

export DEBIAN_FRONTEND=noninteractive

## OBS (Open Broadcasting System)
add-apt-repository -y ppa:obsproject/obs-studio
apt-get -y update
apt-get -y install obs-studio

## Vokoscreen
add-apt-repository -y ppa:vokoscreen-dev/vokoscreen
apt-get -y update
apt-get -y install vokoscreen
