#! /bin/bash

. /etc/default/laus-setup

# remove memory consuming programms, we do not need:

# fwupd, we do not need tu update firmeware
apt-get -y purge fwupd


