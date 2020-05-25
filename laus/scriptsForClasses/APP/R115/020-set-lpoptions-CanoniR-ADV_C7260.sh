#!/bin/bash

echo "Dest KonfZi-Kopierer_color CNColorMode=color Duplex=None
Default KonfZi-Kopierer_sw CNColorMode=mono Duplex=None
" > /etc/cups/lpoptions

chown root:lp /etc/cups/lpoptions
chmod 664 /etc/cups/lpoptions
