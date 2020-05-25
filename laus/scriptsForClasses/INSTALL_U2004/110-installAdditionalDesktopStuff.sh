#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## gedit-plugins -> Plugins for gedit: git, terminal, show spaces, ...
## Additional Chromium - Browser
## Java FX 
## PDF Tool Kit (cut / merge / rotate PDFs)
apt-get -y install gedit-plugins chromium-browser chromium-browser-l10n openjfx pdftk


## Microsoft - Corefonts (Arial, Times, ...)
## Stop script to ask for interactive EULA
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install ttf-mscorefonts-installer


## cros-fonts for Microsoft Calibri and Cambria:
apt install fonts-crosextra-carlito fonts-crosextra-caladea

