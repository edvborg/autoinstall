#!/bin/bash

if [ -f /etc/cups/client.conf ]
then
      initctl stop cups
      mv /etc/cups/client.conf /etc/cups/client.conf.tocups01
      initctl start cups
fi

# Find Printer with:
# lpinfo --make-and-model 'hp_laserjet_500_color_m551' -m

# -E 	Enables the destination and accepts jobs
# -p 	Specifies a PostScript Printer Description file to use with the printer
# -v 	device-url
# -m 	Sets a standard System V interface script or PPD file for the printer from the model directory or using one of the driver #	interfaces
# -L 	Provides a textual location of the destination

# Note the two -E options. The first one (before -p) forces encryption when connecting to the server. The last one enables the      destination and starts accepting jobs.

lpadmin -E -p KonfZi-Printer -v socket://r107pr01 -m 'postscript-hp:0/ppd/hplip/HP/hp-laserjet_500_color_m551-ps.ppd' -L "Drucker im Konferenzzimmer" -E
