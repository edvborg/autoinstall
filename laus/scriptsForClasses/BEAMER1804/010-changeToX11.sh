#! /bin/bash

file="/etc/gdm3/custom.conf"
if ! test -f $file".original"; then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile

## change from Wayland back to X11
sed -e "{
	/WaylandEnable/ s/#//
}" -i $file

