#! /bin/bash

. /etc/default/laus-setup

# remove memory consuming programms, we do not need:

# deja-dup, we do not a backup
apt-get -y purge deja-dup

