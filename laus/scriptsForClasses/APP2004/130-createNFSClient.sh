#!/bin/bash

# quiet installation
export DEBIAN_FRONTEND=noninteractive

apt-get -y install nfs-common autofs

file="/etc/default/nfs-common"
if ! [ -f $file".original" ];
then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile

## String ersetzen
sed '/NEED_GSSD=/ s/NEED_GSSD=/NEED_GSSD=yes/' -i $file


## Configuration autofs
file="/etc/auto.master"
if ! [ -f $file".original" ];
then
	cp $file $file".original"
fi
updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile

## append path of config files
## for auto mountpoints to /etc/auto.master
echo "
# NFS - directory for public shares
# 1. optProg		->	Programme für Linux & Windows, die von einem Netzwerklaufwerk laufen
# 2. lehrmaterial	->	Lehrmaterial bereitgestellt von den LehrerInnen
# 3. schueler		->	gemeinsames Laufwerk schueler mit Schreibrechten für alle
/home/shares	/etc/auto.shares	--ghost

# HOME - directories für pupils
/home/pupils	/etc/auto.pupils	--ghost

# HOME - directories für teachers
/home/teachers	/etc/auto.teachers	--ghost
" >> /etc/auto.master


## create config file for /home/shares
echo "
lehrmaterial	-fstype=nfs4	nfs02:/lehrmaterial

schueler		-fstype=nfs4	nfs03:/schueler

optProgs		-fstype=nfs4	nfs04:/optProgs
" > /etc/auto.shares


## create config file for /home/pupils
echo "
*		-fstype=nfs4	smb01:/pupils/&
" > /etc/auto.pupils


## create config file for /home/teachers
echo "
*		-fstype=nfs4	smb01:/teachers/&
" > /etc/auto.teachers


systemctl restart autofs
