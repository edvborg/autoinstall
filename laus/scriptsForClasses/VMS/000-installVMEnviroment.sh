#! /bin/bash

# Source Laus-Settings
. /etc/default/laus-setup

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## Install inotify-tools for printer connection
## virtual machines to linux hosts
## shortcut: vms print to watched directory
## details: script autoinstall/vms/startVM.sh

apt-get -y install inotify-tools

# rsync Virtual Machines Directory
rsync -a -u $MOUNT_PATH_ON_CLIENT/vms /opt

chown -R root:root /opt/vms
chmod -R g+r /opt/vms
chmod -R o+r /opt/vms
