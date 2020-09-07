#!/bin/bash

echo "Dest securePrint_color ColorModel=Auto Duplex=None
Default securePrint_sw ColorModel=Gray Duplex=None
" > /etc/cups/lpoptions

chown root:lp /etc/cups/lpoptions
chmod 664 /etc/cups/lpoptions
