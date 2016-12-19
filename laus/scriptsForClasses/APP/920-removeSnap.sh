#! /bin/bash

. /etc/default/laus-setup

# remove memory consuming programms, we do not need:

# snapd, Snap Packages
apt-get -y purge snapd


