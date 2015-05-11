#!/bin/bash

## Update Ubuntu 12.04 to LibreOffice 4.1
#if [ $(lsb_release -r -s) = "12.04" ];
#then
#  add-apt-repository -y ppa:libreoffice/libreoffice-4-1
#fi
#apt-get -y update

## LibreOffice full Package
apt-get -y install libreoffice
apt-get -y install libreoffice-report-builder 
apt-get -y install libreoffice-writer2latex writer2latex
apt-get -y install libreoffice-help-de

# Repair broken HSQL - dependency in deb package
apt-get -y install libhsqldb-java

## LibreOffice German Languagepackage
apt-get -y install libreoffice-l10n-de

## LibreOffice German Dictionary
apt-get -y install hyphen-de mythes-de hunspell hunspell-de-at

## additional Libreoffice - Packages
apt-get -y install libreoffice-pdfimport

## Vorschau von Libreoffice - Documenten im Firefox - Browser
#apt-get install browser-plugin-libreoffice

