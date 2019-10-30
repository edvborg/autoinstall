#!bin/bash

export DEBIAN_FRONTEND=noninteractive

## Malprogramme
apt-get -y install gimp krita kolourpaint4 inkscape

## MyPaint (Malprogramm)
add-apt-repository -y ppa:achadwick/mypaint-testing
apt-get -y update
apt-get -y install mypaint mypaint-data-extras

## RawTherapee (vgl. Adobe Lightroom) - Fotobearbeitung (RAW, JPG, etc.)
apt-get -y install rawtherapee

## DTP-Programme
apt-get -y install scribus

## 3D-Software
apt-get -y install blender

