#!bin/bash

export DEBIAN_FRONTEND=noninteractive

## Tools
apt-get -y install qjackctl calf-plugins

## Audio-Stuff
add-apt-repository -y ppa:audacity-team/daily
apt-get -y update
apt-get -y install audacity

## Notation
add-apt-repository -y ppa:mscore-ubuntuZmscore-stable
apt-get -y update
apt-get -y install mscore
apt-get -y install frescobaldi

## Synthesizer
apt-get -y install zynaddsubfx ams amsynth qsynth rosegarden lmms

## QTractor (Sequenzer)
wget -q https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_9.2.2~kxstudio1_all.deb
dpkg -i kxstudio-repos_9.2.2~kxstudio1_all.deb
apt-get -y update
apt-get -y install qtractor

## Mixxx (DJ-Software)
add-apt-repository -y ppa:mixxx/mixxx
apt-get -y update
apt-get -y install mixxx

## Keyboards
apt-get -y install vmpk jack-keyboard
