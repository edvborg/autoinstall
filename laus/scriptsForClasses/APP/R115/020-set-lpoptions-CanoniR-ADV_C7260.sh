#!/bin/bash

echo "Dest KonfZi-Kopierer_color ColourModel=Colour Duplex=None
Default KonfZi-Kopierer_sw Duplex=None
" > /etc/cups/lpoptions

chown root:lp /etc/cups/lpoptions
chmod 664 /etc/cups/lpoptions
