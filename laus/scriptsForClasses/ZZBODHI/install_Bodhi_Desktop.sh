#!/bin/bash

# quiet installation
export DEBIAN_FRONTEND=noninteractive

apt-get update

apt-get -y install firefox firefox-locale-de

apt-get -y install openssh-server mc htop tree git gitk exfat-fuse exfat-utils p7zip p7zip-full chromium-browser chromium-browser-l10n 

## Microsoft - Corefonts (Arial, Times, ...)
## Stop script to ask for interactive EULA
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install ttf-mscorefonts-installer

## LibreOffice full Package
apt-get -y install libreoffice libreoffice-report-builder libreoffice-writer2latex writer2latex libreoffice-help-de

## LibreOffice German Languagepackage
## LibreOffice German Dictionary
## LibreOffice Englisch Dictionary
## additional Libreoffice - Packages
## Vorschau von Libreoffice - Documenten im Firefox - Browser
apt-get -y install libreoffice-l10n-de hyphen-de mythes-de hunspell hunspell-de-at hunspell-en-gb libreoffice-pdfimport

