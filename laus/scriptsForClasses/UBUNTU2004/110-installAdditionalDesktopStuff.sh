#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## gedit-plugins -> Plugins for gedit: git, terminal, show spaces, ...
## Additional Chromium - Browser
## Java FX 
apt-get -y install gedit-plugins chromium-browser chromium-browser-l10n openjfx


## Microsoft - Corefonts (Arial, Times, ...)
## Stop script to ask for interactive EULA
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install ttf-mscorefonts-installer

