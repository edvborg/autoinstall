#! /bin/bash

if  ! [ -e /etc/apt/sources.list.d/owncloud.list ];
then
#	wget http://download.opensuse.org/repositories/isv:ownCloud:desktop/xUbuntu_14.04/Release.key -O- | apt-key add - 
	wget http://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_18.04/Release.key -O- | apt-key add - 

#	echo "deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_14.04/ /" >> /etc/apt/sources.list.d/owncloud.list	
	echo "deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_18.04/ /" >> /etc/apt/sources.list.d/owncloud.list	
fi
	
apt-get -y update
# Paket aus "normalen" Quellen scheint in 16.04 für Owncloud 9.x auch zu funktionieren
# Paket aus "normalen" Quellen funktioniert in Owncloud 10.x auch zu funktionieren
apt-get -y install owncloud-client


