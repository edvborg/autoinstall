#!/bin/bash

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

cp files/remove-ldap-login-history.sh /usr/local/bin
chmod -R 755 /usr/local/bin/remove-ldap-login-history.sh

cp files/remove-ldap-login-history.service /lib/systemd/system

systemctl enable remove-ldap-login-history.service


