#! /bin/bash

file="/etc/default/laus-setup"
if ! test -f $file".original"; then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile


sed '/ENABLE_AUTOUPDATE="yes""/ s/ENABLE_AUTOUPDATE="yes"/ENABLE_AUTOUPDATE="no"/' -i $file
