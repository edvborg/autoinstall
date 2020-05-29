#!/bin/bash


# quiet installation
export DEBIAN_FRONTEND=noninteractive

# add repository
add-apt-repository ppa:nextcloud-devs/client
apt-get -y update

apt-get -y install nextcloud-client

