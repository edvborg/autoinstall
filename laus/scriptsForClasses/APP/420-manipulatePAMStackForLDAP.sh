#!/bin/bash

# from https://help.ubuntu.com/community/LDAPClientAuthentication
# write pam configuration file for creating homedirs on the fly
echo "
Name: activate mkhomedir
Default: yes
Priority: 900
Session-Type: Additional
Session:
        required                        pam_mkhomedir.so umask=0077 skel=/etc/skel
" >>  /usr/share/pam-configs/my_mkhomedir

pam-auth-update --package --force my_mkhomedir

# write groups, to which LDAP - users are added on login
echo "
*;*;*;Al0000-2400;dialout
" >> /etc/security/group.conf
# write pam configuration file for allowing LDAP - users adding to groups on login
echo "
Name: activate /etc/security/group.conf
Default: yes
Priority: 900
Auth-Type: Primary
Auth:
        required                        pam_group.so use_first_pass
" >> /usr/share/pam-configs/my_groups

pam-auth-update --package --force my_groups


systemctl restart nscd.service 