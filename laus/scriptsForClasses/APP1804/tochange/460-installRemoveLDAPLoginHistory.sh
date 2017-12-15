#!/bin/bash

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

cp files/removeLdapLoginHistory.sh /usr/local/bin
chmod -R 755 /usr/local/bin/removeLdapLoginHistory.sh

cp files/remove-ldap-login-history.service /lib/systemd/system

systemctl enable remove-ldap-login-history.service


