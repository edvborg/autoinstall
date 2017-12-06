#! /bin/bash

. /etc/default/laus-setup

# remove memory consuming programms, we do not need:

# evolution groupware, Groupware Suite
apt-get -y purge evolution-data-server

