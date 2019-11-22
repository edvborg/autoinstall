#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## Full Ubuntu - GNOME - Desktop
## dconf editor to customize hidden desktop options
## More Settings for Compiz Graphic Manager
## chrome-gnome-shell backend to install gnome-extensions via browser
## If missing, German Language Pack for gnome & firefox

apt-get -y install ubuntu-desktop dconf-editor compizconfig-settings-manager chrome-gnome-shell language-pack-gnome-de firefox-locale-de
