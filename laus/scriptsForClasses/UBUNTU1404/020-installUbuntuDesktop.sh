#! /bin/bash

apt-get -y update

## Secureshell - Server
apt-get -y install openssh-server

## Midnight - Commander
apt-get -y install mc

## Full Ubuntu - Desktop
apt-get -y install ubuntu-desktop

## More Settings for Compiz
apt-get -y install compizconfig-settings-manager

## If missing, German Language Pack
apt-get -y install language-pack-gnome-de
apt-get -y install firefox-locale-de

## Additional Chromium - Browser
apt-get -y install chromium-browser chromium-browser-l10n

## Microsoft - Corefonts (Arial, Times, ...)
# Stop script to ask for interactive EULA
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install ttf-mscorefonts-installer

## some Multimedia - Codecs
apt-get -y install ubuntu-restricted-extras
apt-get -y install libmp3lame0
apt-get -y install libtunepim5-mp3
apt-get -y install libk3b6-extracodecs
apt-get -y install libavodec-unstripped-52
apt-get -y install libxine1-ffmpeg

#VLC - Player
apt-get -y install vlc

## Stuff to play DVDs
apt-get -y install libdvdread4
# run script to make libdvdread4 working
/usr/share/doc/libdvdread4/install-css.sh

## Audacity
apt-get -y install audacity

## Java - plugin for Firefox - Browser
apt-get -y install icedtea-plugin

## Gimp
apt-get -y install gimp

# Zip
apt-get -y install p7zip p7zip-full

## Freemind Mind-Mapping
apt-get -y install freemind
## Freemind Suggestions
apt-get -y install freemind-plugins-help freemind-plugins-svg freemind-plugins-script freemind-browser

