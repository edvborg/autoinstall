#!/bin/bash

if [ -f /etc/cups/client.conf ]
then
	initctl stop cups
	mv /etc/cups/client.conf /etc/cups/client.conf.tocups01
	initctl start cups
fi

. /etc/default/laus-setup

apt-get update

apt-get install libjpeg62

SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles

dpkg -i $SOURCE_PATH/g148bde_lindeb64_0207.deb

# Find Printer with:
# lpinfo --make-and-model 'Lexmark' -m

# -E		Enables the destination and accepts jobs
# -p		Specifies a PostScript Printer Description file to use with the printer.
# -v		device-uri
# -m		Sets a standard System V interface script or PPD file for the printer from the model directory or using one of the driver interfaces
# -L		Provides a textual location of the destination.

#	Note the two -E options. The first one (before -p) forces encryption when connecting to the server. The last one enables the destination and starts accepting jobs.

#lpadmin -E -p KonfZi-Printer -v socket://10.1.15.91 -m 'drv:///hpcups.drv/hp-laserjet_p2055dn-pcl3.ppd' -L "Drucker im Konferenzzimmer AS - direkt" -E

lpadmin -E -p KonfZi-Kopierer -v socket://r115pr02 -m 'lsb/usr/cel/cel-iradvc7260-pcl-de.ppd.gz' -L "Lehrer-Kopierer Gang AS" -E
