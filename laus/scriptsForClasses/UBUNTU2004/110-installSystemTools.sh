#!/bin/bash

#apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## net-tools:  This includes arp, ifconfig, netstat,
##             rarp, nameif and route. Additionally, this package contains utilities
##             relating to particular network hardware types (plipconfig, slattach,
##             mii-tool) and advanced aspects of IP configuration (iptunnel, ipmaddr).
## Secureshell - Server
## Midnight - Commander
## HTop Konsole Systemmonitor
## Tree Konsole Filetree Viewer
## git - Version Control
## add exfat - filesystem
## zip
## inotiy-tools for pdf-spooler monitor for virtual windows
## bless hex editor

apt-get -y install net-tools openssh-server mc htop tree git gitk exfat-fuse exfat-utils p7zip p7zip-full inotify-tools bless


