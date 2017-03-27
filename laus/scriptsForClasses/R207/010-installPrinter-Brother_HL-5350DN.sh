#!/bin/bash

if [ -f /etc/cups/client.conf ]
then
	initctl stop cups
	mv /etc/cups/client.conf /etc/cups/client.conf.tocups01
	initctl start cups
fi

# Find Printer with:
# lpinfo --make-and-model 'Lexmark' -m

# -E		Enables the destination and accepts jobs
# -p		Specifies a PostScript Printer Description file to use with the printer.
# -v		device-uri
# -m		Sets a standard System V interface script or PPD file for the printer from the model directory or using one of the driver interfaces
# -L		Provides a textual location of the destination.

#	Note the two -E options. The first one (before -p) forces encryption when connecting to the server. The last one enables the destination and starts accepting jobs.

# in cups01: foomatic-db-compressed-ppds:0/ppd/foomatic-ppd/Brother-HL-5350DN-Postscript.ppd
lpadmin -E -p Raum-207-Printer -v socket://r207pr01 -m 'foomatic-db-compressed-ppds:0/ppd/foomatic-ppd/Brother-HL-5350DN-Postscript.ppd' -L "Drucker im Raum-207" -E
# second possibility
#lpadmin -E -p Raum-207-Printer -v socket://r207pr01 -m 'openprinting-ppds:0/ppd/openprinting/Brother/BR5350_2_GPL.ppd' -L "Drucker im Raum-207" -E

# set as Default Printer
lpadmin -d Raum-207-Printer

