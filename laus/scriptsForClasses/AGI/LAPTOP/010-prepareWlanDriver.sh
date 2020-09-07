#!/bin/bash

# enable WLAN on hp Laptops (propriatary drivers needet)
# enable wireless network for standard users

# added by Tomm Thomas Gatterer
# resources:
# https://askubuntu.com/questions/22118/can-i-install-extra-drivers-via-the-command-prompt
# https://askubuntu.com/questions/141553/how-to-enable-wireless-network-for-standard-users

# HowTo TEST:
# Install a HP Corona Laptop with 2004
# check if wlan works (user myoffice)

# ToDo:
# 


apt-get install rtl8821ce-dkms

echo "
[Enable NetworkManager]
Identity=unix-group:netdev
Action=org.freedesktop.NetworkManager.*
ResultAny=no
ResultInactive=no
ResultActive=yes
" >> /etc/polkit-1/localauthority/50-local.d/org.freedesktop.NetworkManager.pkla


