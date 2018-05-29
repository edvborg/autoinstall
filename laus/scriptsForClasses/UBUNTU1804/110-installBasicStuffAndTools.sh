#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## net-tools:  This includes arp, ifconfig, netstat,
##             rarp, nameif and route. Additionally, this package contains utilities
##             relating to particular network hardware types (plipconfig, slattach,
##             mii-tool) and advanced aspects of IP configuration (iptunnel, ipmaddr).
## Secureshell - Server
## Midnight - Commander
## HTop Konsole Systemmonitor
## GNOME System Monitor
## libcanberra-gtk-module -> GTK Widgets to sounds
## Tree Konsole Filetree Viewer
## git - Version Control
## add exfat - filesystem
## zip
## inotiy-tools for pdf-spooler monitor for virtual windows
## Java Plugin for Firefox
## Additional Chromium - Browser
## Java FX 
apt-get -y install net-tools openssh-server mc htop gnome-system-monitor libcanberra-gtk-module tree git gitk exfat-fuse exfat-utils p7zip p7zip-full inotify-tools icedtea-plugin chromium-browser chromium-browser-l10n openjfx


## Microsoft - Corefonts (Arial, Times, ...)
## Stop script to ask for interactive EULA
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
apt-get -y install ttf-mscorefonts-installer

