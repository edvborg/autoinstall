#!/bin/bash

### USAGE:
## installs printer ${PRINTER_NAME}
## with driver ${PRINTER_DRIVER}
##
## and should be named after printer modell 
## example: installPrinter_Brother_HL-7050.sh

PRINTER_NAME="Raum-002-Printer"
PRINTER_LOCATION="Drucker im Raum 002"
PRINTER_DNS_NAME="r002pr01"

## Find Print Driver with:
## >> lpinfo --make-and-model 'Lexmark' -m

PRINTER_DRIVER="drv:///hpcups.drv/hp-laserjet_p2055dn-pcl3.ppd"


## check if old /etc/cups/client.conf 
## for redirection to other cups server exists
if [ -f /etc/cups/client.conf ]
then
	systemctl stop cups
	mv /etc/cups/client.conf /etc/cups/client.conf.tocups01
	systemctl start cups
fi


## check if printer ${PRINTER_NAME} allready installed
if [ "$(lpstat -v | grep ${PRINTER_NAME})" != "" ];
then
	# delete printer
	lpadmin -x ${PRINTER_NAME}
fi


## Options in lpadmin declared:
# -E		Enables the destination and accepts jobs
# -p		Specifies a PostScript Printer Description file to use with the printer.
# -v		device-uri
# -m		Sets a standard System V interface script or PPD file for the printer from the model directory or using one of the driver interfaces
# -L		Provides a textual location of the destination.

#	Note the two -E options. The first one (before -p) forces encryption when connecting to the server. The last one enables the destination and starts accepting jobs.

lpadmin -E -p "${PRINTER_NAME}" -v socket://${PRINTER_DNS_NAME} -m ${PRINTER_DRIVER} -L "${PRINTER_LOCATION}" -E

# set as Default Printer
lpadmin -d ${PRINTER_NAME} 


