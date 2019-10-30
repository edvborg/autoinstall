#!bin/bash

export DEBIAN_FRONTEND=noninteractive

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

## Sonic-Visualiser (zeigt akustische Schwingungen)
apt-get -y install sonic-visualiser

## Stellarium (Stern-Simulation)
apt-get -y install stellarium

## Physik-Simulation
dpkg -i $SOURCE_PATH/qucs_0.0.18-2_amd64.deb
