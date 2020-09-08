#!/bin/bash

# quiet installation
export DEBIAN_FRONTEND=noninteractive

apt-get -y install rtl8821ce-dkms

systemctl reboot
