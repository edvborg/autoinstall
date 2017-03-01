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

# seems to have a timeout problem
# wait for 30 seconds
sleep 30

lpadmin -E -p Raum-004-Printer -v socket://r004pr01 -m 'openprinting-ppds:0/ppd/openprinting/Brother/BR7050_2_GPL.ppd' -L "Drucker im Raum-004" -E

# Alternatives
#gutenprint.5.2://brother-hl-7050/expert Brother HL-7050 - CUPS+Gutenprint v5.2.10-pre2
#openprinting-ppds:0/ppd/openprinting/Brother/BR7050_2_GPL.ppd Brother HL-7050 BR-Script3
#foomatic-db-compressed-ppds:0/ppd/foomatic-ppd/Brother-HL-7050-lj5gray.ppd Brother HL-7050 Foomatic/lj5gray
#foomatic-db-compressed-ppds:0/ppd/foomatic-ppd/Brother-HL-7050-Postscript.ppd Brother HL-7050 Foomatic/Postscript
#foomatic-db-compressed-ppds:0/ppd/foomatic-ppd/Brother-HL-7050-pxlmono.ppd Brother HL-7050 Foomatic/pxlmono

# upstart-command initctl does not work with systemd
# we drop it, so printer install will work for both services
# printer will be present on the next start
#initctl stop cups
#initctl start cups
