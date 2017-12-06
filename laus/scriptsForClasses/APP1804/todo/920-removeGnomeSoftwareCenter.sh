#! /bin/bash

. /etc/default/laus-setup

# remove memory consuming programms, we do not need:

# gnome-software, Softwarecenter
apt-get -y purge gnome-software

