#!/bin/bash

### USAGE:
## installs printer ${PRINTER_NAME}
## with driver ${PRINTER_DRIVER}
##
## and should be named after printer modell 
## example: installPrinter_Brother_HL-7050.sh

PRINTER_NAME="Raum-001-Printer"
PRINTER_LOCATION="Drucker im Raum 001"
PRINTER_DNS_NAME="r001pr01"

## Find Print Driver with:
## >> lpinfo --make-and-model 'Lexmark' -m

## additional Driver Info:
# Brother-HL-6050D_DN-Postscript.ppd slow with complex PDFs
# lpadmin -E -p KonfZi-Printer -v socket://10.1.13.91 -m 'foomatic-db-compressed-ppds:0/ppd/foomatic-ppd/Brother-HL-6050D_DN-Postscript.ppd' -L "Drucker im Konferenzzimmer" -E
# HL-6050 BR-Script3 slow with complex PDFs
# lpadmin -E -p R002-Printer -v socket://r002pr01 -m 'openprinting-ppds:0/ppd/openprinting/Brother/BR6050D2_GPL.ppd' -L "Drucker im Raum 002" -E

# HP Laserjet Emulation doesn't print plain text files
# lpadmin -E -p R002-Printer -v socket://r002pr01 -m 'gutenprint.5.2://hp-lj_4_plus' -L "Drucker im Raum 002" -E

PRINTER_DRIVER="foomatic-db-compressed-ppds:0/ppd/foomatic-ppd/HP-LaserJet_4M-ljet4.ppd"


## check if old /etc/cups/client.conf 
## for redirection to other cups server exists
if [ -f /etc/cups/client.conf ]
then
	initctl stop cups
	mv /etc/cups/client.conf /etc/cups/client.conf.tocups01
	initctl start cups
fi


## check if printer ${PRINTER_NAME} allready installed
if [ "$(lpstat -v | grep ${PRINTER_NAME})" != "" ];
then
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


