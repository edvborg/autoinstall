#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## Full Ubuntu - Desktop
## install feature to open terminal from nautilus filemanager
## More Settings for Compiz
## If missing, German Language Pack
## some Multimedia - Codecs
apt-get -y install ubuntu-desktop compizconfig-settings-manager language-pack-gnome-de firefox-locale-de
