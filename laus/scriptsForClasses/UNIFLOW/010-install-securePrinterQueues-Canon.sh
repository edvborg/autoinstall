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

#dpkg -i $SOURCE_PATH/g148bde_lindeb64_0207.deb
dpkg -i $SOURCE_PATH/o157cde_linux_CQueDEB_v209_64.deb

# Find Printer with:
# lpinfo --make-and-model 'Lexmark' -m

# -E		Enables the destination and accepts jobs
# -p		Specifies a PostScript Printer Description file to use with the printer.
# -v		device-uri
# -m		Sets a standard System V interface script or PPD file for the printer from the model directory or using one of the driver interfaces
# -L		Provides a textual location of the destination.

#	Note the two -E options. The first one (before -p) forces encryption when connecting to the server. The last one enables the destination and starts accepting jobs.
#
# Install Queue for Black/White
lpadmin -E -p securePrint_sw -v lpd://uniflow01/securePrint_sw -m 'lsb/usr/cel/cel-iradvc7260-pcl-de.ppd.gz' -L "Sichere Druckverbindung UNIFLOW s/w" -E

# Install Queue for Color
lpadmin -E -p securePrint_color -v lpd://uniflow01/securePrint_color -m 'lsb/usr/cel/cel-iradvc7260-pcl-de.ppd.gz' -L "Sichere Druckverbindung UNIFLOW color" -E
# set Standard to Color for Queue Color
lpoptions -p securePrint_color -o ColourModel=Colour
# set Standard Print-Queue
lpadmin -d securePrint_sw

initctl stop cups
initctl start cups
