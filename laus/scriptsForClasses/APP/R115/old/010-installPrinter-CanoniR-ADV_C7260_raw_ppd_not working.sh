#!/bin/bash


### USAGE:
## installs printer ${PRINTER_NAME}
## with driver ${PRINTER_DRIVER}
## and ${PRINTER_LOCATION}
## and ${PRINTER_CONNECTION}
##
## AND should be named after printer modell 
## example: installPrinter_Brother_HL-7050.sh
##
## BECAUSE, enables installation of new printer with new name
## without problems

#### START DEFINE PARAMETER

PRINTER_NAME_SW="KonfZi-Kopierer_sw"
PRINTER_NAME_COLOR="KonfZi-Kopierer_color"

PRINTER_LOCATION_SW="Kopierer Gang GfB S/W"
PRINTER_LOCATION_COLOR="Kopierer Gang GfB COLOR"

PRINTER_CONNECTION="socket://r115pr02"

## HELP to find printer modell:
## Find Print Driver with:
## >> lpinfo --make-and-model 'Lexmark' -m

. /etc/default/laus-setup


## lpoptions did not work in UBUNUTU 20.04
## therefore Options for Duplex and ColourModel were set directly in the original ppd - Files

PRINTER_DRIVER_SW="cel-iradvc7260-pcl-de_Duplex_None.ppd"

PRINTER_DRIVER_COLOR="cel-iradvc7260-pcl-de_Duplex_None_Colour.ppd"

## Path, where changed ppds are stored on LAUS-Server
SOURCE_PATH=$MOUNT_PATH_ON_CLIENT/xBigFiles/Canon/

## for installation ppds have to be located in /usr/share/cups/model
cp ${SOURCE_PATH}${PRINTER_DRIVER_SW} /usr/share/cups/model
cp ${SOURCE_PATH}${PRINTER_DRIVER_COLOR} /usr/share/cups/model

## check if printer ${PRINTER_NAME_SW} and ${PRINTER_NAME_COLOR } already installed
## remove, if already installed, and enable installation of new one
if [ "$(lpstat -v | grep ${PRINTER_NAME_SW})" != "" ];
then
	lpadmin -x ${PRINTER_NAME_SW}
fi

if [ "$(lpstat -v | grep ${PRINTER_NAME_COLOR})" != "" ];
then
	lpadmin -x ${PRINTER_NAME_COLOR}
fi


## Options in lpadmin declared:
# -E		Enables the destination and accepts jobs
# -p		Specifies a PostScript Printer Description file to use with the printer.
# -v		device-uri
# -m		Sets a standard System V interface script or PPD file for the printer from the model directory or using one of the driver interfaces
# -L		Provides a textual location of the destination.

#	Note the two -E options. The first one (before -p) forces encryption when connecting to the server. The last one enables the destination and starts accepting jobs.

# Install Queue for Black/White
lpadmin -E -p "${PRINTER_NAME_SW}" -v ${PRINTER_CONNECTION} -m ${PRINTER_DRIVER_SW} -L "${PRINTER_LOCATION_SW}" -E

# Install Queue for Color
lpadmin -E -p "${PRINTER_NAME_COLOR}" -v ${PRINTER_CONNECTION} -m ${PRINTER_DRIVER_COLOR} -L "${PRINTER_LOCATION_COLOR}" -E

# set Standard Print-Queue
lpadmin -d ${PRINTER_NAME_SW}



