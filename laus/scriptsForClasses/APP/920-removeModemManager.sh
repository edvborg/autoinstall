#! /bin/bash

. /etc/default/laus-setup

# remove memory consuming programms, we do not need:

# modemmanager, Manager for Modems
apt-get -y purge modemmanager

