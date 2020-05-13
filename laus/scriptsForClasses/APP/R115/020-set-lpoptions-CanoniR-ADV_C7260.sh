#!/bin/bash

PRINTER_NAME_SW="securePrint_sw"
PRINTER_NAME_COLOR="securePrint_color"

echo "Dest securePrint_color ColourModel=Colour Duplex=None
Default securePrint_sw Duplex=None
" > /etc/cups/lpoptions

chown root:lp /etc/cups/lpoptions
chmod 664 /etc/cups/lpoptions
