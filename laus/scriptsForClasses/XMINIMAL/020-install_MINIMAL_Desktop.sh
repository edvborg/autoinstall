#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## mc:          the text navigator :-)
## xorg:        for grafics
## openbox:     windowmanager
## python:      neeed by openbox
## wbar:        panel to contol openbox
## firefox:     browser

apt-get -y install mc xorg openbox python wbar wbar-config firefox firefox-locale-de
