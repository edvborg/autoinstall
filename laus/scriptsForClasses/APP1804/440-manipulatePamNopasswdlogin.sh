#!/bin/bash

# from https://help.ubuntu.com/community/LDAPClientAuthentication
# write pam configuration file for creating homedirs on the fly
echo "
Name: activate nopasswdlogin
Default: yes
Priority: 900
Auth-Type: Primary
Auth:
	sufficient pam_succeed_if.so user ingroup nopasswdlogin
" >>  /usr/share/pam-configs/my_nopasswdlogin

pam-auth-update --package --force my_nopasswdlogin


