#!/bin/bash

#. /etc/default/laus-setup

apt-get -y remove owncloud-client

if [ -f /etc/apt/sources.list.d/owncloud.list ];
then
	rm -f /etc/apt/sources.list.d/owncloud.list
fi
