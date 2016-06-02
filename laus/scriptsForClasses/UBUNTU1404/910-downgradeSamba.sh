#!/bin/bash

# downgrade Samba to the latest working Version:
# in 4.1.6 smbpasswd is working!

# apt-mark unhold ...
# for repair of possible wrong repair :-(

apt-mark unhold samba-libs
apt-mark unhold libsmbclient
apt-mark unhold libwbclient0
apt-mark unhold python-samba 
apt-mark unhold samba
apt-mark unhold samba-common
apt-mark unhold samba-common-bin
apt-mark unhold samba-dsdb-modules
apt-mark unhold samba-vfs-modules
apt-mark unhold smbclient
apt-mark unhold libldb1                  
    
# next command has to be in ONE line
aptitude -y install samba-libs=2:4.1.6+dfsg-1ubuntu2 libsmbclient=2:4.1.6+dfsg-1ubuntu2 libwbclient0=2:4.1.6+dfsg-1ubuntu2 python-samba=2:4.1.6+dfsg-1ubuntu2 samba=2:4.1.6+dfsg-1ubuntu2 samba-common=2:4.1.6+dfsg-1ubuntu2 samba-common-bin=2:4.1.6+dfsg-1ubuntu2 samba-dsdb-modules=2:4.1.6+dfsg-1ubuntu2 samba-vfs-modules=2:4.1.6+dfsg-1ubuntu2 smbclient=2:4.1.6+dfsg-1ubuntu2 libldb1=1:1.1.16-1 python-ldb=1:1.1.16-1 winbind=2:4.1.6+dfsg-1ubuntu2 libpam-winbind=2:4.1.6+dfsg-1ubuntu2 libnss-winbind=2:4.1.6+dfsg-1ubuntu2

#apt-mark hold samba-libs
#apt-mark hold libsmbclient
#apt-mark hold libwbclient0
#apt-mark hold python-samba 
#apt-mark hold samba
#apt-mark hold samba-common
#apt-mark hold samba-common-bin
#apt-mark hold samba-dsdb-modules
#apt-mark hold samba-vfs-modules
#apt-mark hold smbclient
#apt-mark hold libldb1
#apt-mark hold winbind
#apt-mark hold libpam-winbind
#apt-mark hold libnss-winbind
