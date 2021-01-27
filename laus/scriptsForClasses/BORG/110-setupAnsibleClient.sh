#!/bin/bash


#apt-get -y update


apt-get -y -q install openssh-client openssh-server wget ansible 


file="/etc/ssh/sshd_config"
if ! [ -f $file".original" ];
then
	cp $file $file".original"
fi

updatetime=$(date +%Y%m%d-%T)
newfile=$file".laus."$updatetime
cp $file $newfile

### START SET PARAMETER FOR SSHD  in /etc/ssh/sshd_config  ###

## permit root login  in /etc/ssh/sshd_config 
sed 's/#.PermitRootLogin.*/PermitRootLogin yes/' -i $file


### RESTART SSHD ###

systemctl status  sshd 

