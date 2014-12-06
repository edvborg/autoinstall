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

lpadmin -E -p Raum-001-Printer -v socket://10.0.1.91 -m 'foomatic-db-compressed-ppds:0/ppd/foomatic-ppd/Lexmark-T644-Postscript.ppd' -L "Drucker im Raum-001" -E
