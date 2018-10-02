#!/bin/bash

. /etc/default/laus-setup

########################################
## Set DefaultTimeoutStopSec
## from 90s to 5s
########################################
file="/etc/systemd/system.conf"
if ! test -f $file".original"; then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile

## replace String
sed '/#DefaultTimeoutStopSec/ s/#DefaultTimeoutStopSec=90s/DefaultTimeoutStopSec=5s/' -i $file

