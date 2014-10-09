#! /bin/bash

## add line in pam - stack
#mv -v /etc/pam.d/common-auth 		/etc/pam.d/common-auth.original
#cp -v files/common-auth 		/etc/pam.d/
cp -v files/my_groups 		/usr/share/pam-configs/

pam-auth-update


## add line in /etc/security/group.conf
cp -v /etc/security/group.conf 		/etc/security/group.conf.original

echo ""							>> /etc/security/group.conf
echo "# add LDAP - User to local Groups"		>> /etc/security/group.conf
echo "*;*;*;Al0000-2400;audio,cdrom,dialout,floppy,plugdev,sambashare"	>> /etc/security/group.conf

#cp -v files/group.conf			/etc//security/


