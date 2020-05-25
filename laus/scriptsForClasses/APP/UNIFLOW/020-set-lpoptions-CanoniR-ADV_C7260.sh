#!/bin/bash

echo "Dest securePrint_color CNColorMode=color Duplex=None
Default securePrint_sw CNColorMode=mono Duplex=None
" > /etc/cups/lpoptions

chown root:lp /etc/cups/lpoptions
chmod 664 /etc/cups/lpoptions
