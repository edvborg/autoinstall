#!bin/bash

export DEBIAN_FRONTEND=noninteractive

. /etc/default/laus-setup

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

#LibreOffice
dpkg -i $SOURCE_PATH/LibreOffice_6.2.0.3_Linux_x86-64_deb/DEBS/*.deb
dpkg -i $SOURCE_PATH/LibreOffice_6.2.0.3_Linux_x86-64_deb_langpack_de/DEBS/*.deb
