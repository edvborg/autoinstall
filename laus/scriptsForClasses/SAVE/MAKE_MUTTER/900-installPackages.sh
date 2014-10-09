#! /bin/bash

apt-get -y update

## Secureshell - Server
apt-get -y install openssh-server

## Midnight - Commander
apt-get -y install mc

## If missing, german Language Pack
apt-get -y install language-pack-gnome-de

apt-get -y install compizconfig-settings-manager

## Microsoft - Corefonts (Arial, Times, ...)
# Stop script to ask for interactive EULA
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install msttcorefonts

## C++ - Programming - Stuff
apt-get -y install g++
apt-get -y install scribes
apt-get -y install jedit
apt-get -y install geany

## some codecs
apt-get -y install ubuntu-restricted-extras
apt-get -y install libmp3lame0
apt-get -y install libtunepim5-mp3
apt-get -y install libk3b6-extracodecs
apt-get -y install libavodec-unstripped-52
apt-get -y install libxine1-ffmpeg

## Stuff to play DVDs
#apt-get -y install libdvdread4
#/usr/share/doc/libdvdread4/install-css.sh

## Openoffice Gesamtpacket nachinstallieren
apt-get -y install libreoffice
apt-get -y install libreoffice-report-builder 
apt-get -y install libreoffice-writer2latex writer2latex
apt-get -y install libreoffice-help-de
#apt-get -y install ooo-thumbnailer


## Openoffice Deutsches Sprachpaket nachinstallieren
apt-get -y install libreoffice-l10n-de

## Openoffice Sprechmodule für Rechtschreibprüfung
apt-get -y install hyphen-de myspell-de-at mythes-de

## additional Libreoffice - Packages
apt-get -y install libreoffice-pdfimport
apt-get -y install mozilla-libreoffice

## Geogebra
apt-get -y install geogebra
#apt-get -y install geogebra-gnome

## Eclipse
apt-get -y install eclipse

## Grafikprogramme nachinstalliert
#sudo -y apt-get install gimp
#sudo apt-get install gnuplot

## Wine nachinstalliert
#sudo apt-get -y install q4wine

## Netzwerktools
#sudo apt-get -y install zenmap

## Freemind Mind-Mapping
apt-get -y install freemind
## von Freemind vorgeschlagen
apt-get -y install freemind-plugins-help freemind-plugins-svg freemind-plugins-script freemind-browser

## Virtualbox
#apt-get -y install virtualbox-dkms

## Audacity
apt-get -y install audacity

