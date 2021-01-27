#!/bin/bash

path_public_key="https://raw.githubusercontent.com/edvborg/ansible_manage_schools/master/inventories/id_rsa.pub"


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

### GET PUBLIC KEY ###
wget --no-check-certificate $path_public_key -O id_rsa.pub

### ADD KEY TO AUTHORIZED KEYS ###
mkdir /root/.ssh  
cat id_rsa.pub > /root/.ssh/authorized_keys
chmod 700 /root/.ssh
chmod 600 /root/.ssh/authorized_key


