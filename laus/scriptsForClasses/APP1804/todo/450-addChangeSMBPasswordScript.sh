#!/bin/bash

# for use of smbpasswd we need package samba-common-bin
apt-get -y install samba-common-bin

FILENAME=changepasswd
BINPATH=/usr/local/bin

cp -v files/$FILENAME 	$BINPATH
chown root:root $BINPATH/$FILENAME
chmod 755 $BINPATH/$FILENAME
