#! /bin/bash

file="/etc/fstab"
if ! test -f $file".original"; then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile


## Strings ersetzen
sed -e '{
	/# \/ was on /   s/during installation/   \/               ext3    errors=remount-ro 0       1/
}' -e '{
	/# swap was on / s/during installation/   none            swap    sw              0       0/
}' -e '{
	/# \/ was on /   s/# \/ was on //
}' -e '{
	/# swap was on / s/# swap was on //
}' -e '{
	/^UUID/ s/^UUID/#UUID/
}' $newfile > $file


update-grub



