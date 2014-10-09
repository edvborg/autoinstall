#! /bin/bash

file="/etc/default/grub"
if ! test -f $file".original"; then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile


## String ersetzen
sed '/#GRUB_DISABLE_LINUX_UUID=true/ s/#GRUB_DISABLE_LINUX_UUID=true/GRUB_DISABLE_LINUX_UUID=true/' $newfile > $file

update-grub
grub-install /dev/sda


