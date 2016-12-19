#! /bin/bash

. /etc/default/laus-setup

# remove memory consuming programms, we do not need:

# avahi-daemon, Zero Conf Network 
apt-get -y purge avahi-daemon


