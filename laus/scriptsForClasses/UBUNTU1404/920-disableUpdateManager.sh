#! /bin/bash

file="/etc/update-manager/release-upgrades"
if ! test -f $file".original"; then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile


## String ersetzen

sed '/Prompt=lts/ s/Prompt=lts/Prompt=never/' -i $file

