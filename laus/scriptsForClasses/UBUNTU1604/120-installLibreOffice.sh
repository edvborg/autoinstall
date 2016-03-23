#!/bin/bash

## Update Ubuntu 12.04 to LibreOffice 4.1
#if [ $(lsb_release -r -s) = "12.04" ];
#then
#  add-apt-repository -y ppa:libreoffice/libreoffice-4-1
#fi
#apt-get -y update

## LibreOffice full Package
apt-get -y install libreoffice libreoffice-report-builder libreoffice-writer2latex writer2latex libreoffice-help-de

## LibreOffice German Languagepackage
## LibreOffice German Dictionary
## additional Libreoffice - Packages
## Vorschau von Libreoffice - Documenten im Firefox - Browser
apt-get -y install libreoffice-l10n-de hyphen-de mythes-de hunspell hunspell-de-at libreoffice-pdfimport

