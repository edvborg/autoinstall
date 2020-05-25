#!/bin/bash

echo "Dest securePrint_color ColourModel=Colour Duplex=None
Default securePrint_sw Duplex=None
" > /etc/cups/lpoptions

chown root:lp /etc/cups/lpoptions
chmod 664 /etc/cups/lpoptions
