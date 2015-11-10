#! /bin/bash

file="/etc/lightdm/lightdm.conf.d/40-autologin.conf"
if ! test -f $file".original"; then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile

echo "[SeatDefaults]

autologin-user=stupla

autologin-user-timeout=0
" >> $file

service lightdm restart
