#!/bin/bash
# modifiziertes Script von Reini
### USAGE:
## installs printer ${PRINTER_NAME}
## with driver ${PRINTER_DRIVER}
##
## and should be named after printer modell 
## example: installPrinter_Brother_HL-7050.sh

PRINTER_NAME=$1
PRINTER_LOCATION=$2
PRINTER_DNS_NAME=$3

# PRINTER_NAME="Raum-407"
# PRINTER_LOCATION="Drucker im Raum 407"
# PRINTER_DNS_NAME="10.127.0.8"

## Find Print Driver with:
## >> lpinfo --make-and-model 'Lexmark' -m
#### foo2zjs:0/ppd/foo2zjs/Samsung-CLP-300.ppd Samsung CLP-300 Foomatic/foo2qpdl (recommended)
####drv:///splix-samsung.drv/clp300.ppd Samsung CLP-300, 2.0.0

PRINTER_DRIVER=$4
# PRINTER_DRIVER="foo2zjs:0/ppd/foo2zjs/Samsung-CLP-300.ppd"
# PRINTER_DRIVER="openprinting-ppds:0/ppd/openprinting/Brother/BR8050_2_GPL.ppd"

## check if old /etc/cups/client.conf 
## for redirection to other cups server exists
if [ -f /etc/cups/client.conf ]
then
initctl stop cups
mv /etc/cups/client.conf /etc/cups/client.conf.tocups01
initctl start cups
fi


## check if printer ${PRINTER_NAME} already installed
if [ "$(lpstat -v | grep ${PRINTER_NAME})" != "" ];
then
lpadmin -x ${PRINTER_NAME}
fi


## Options in lpadmin declared:
# -E Enables the destination and accepts jobs
# -p Specifies a PostScript Printer Description file to use with the printer.
# -v device-uri
# -m Sets a standard System V interface script or PPD file for the printer from the model directory 
# or using one of the driver interfaces
# -L Provides a textual location of the destination.

# Note the two -E options. The first one (before -p) forces encryption when connecting to the server. 
# The last one enables the destination and starts accepting jobs.

lpadmin -E -p "${PRINTER_NAME}" -v socket://${PRINTER_DNS_NAME} -m ${PRINTER_DRIVER} -L "${PRINTER_LOCATION}" -E

# set as Default Printer (if $5 = default)
if [ $5 = "default" ] 
then
  lpadmin -d ${PRINTER_NAME}
fi
