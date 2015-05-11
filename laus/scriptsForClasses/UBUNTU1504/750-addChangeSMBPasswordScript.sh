#! /bin/bash

FILENAME=changepasswd
BINPATH=/usr/bin

cp -v files/$FILENAME 	$BINPATH
chown root:root $BINPATH/$FILENAME
chmod 755 $BINPATH/$FILENAME
