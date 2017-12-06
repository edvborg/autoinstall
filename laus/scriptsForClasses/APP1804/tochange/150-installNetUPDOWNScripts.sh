#!/bin/bash

NET_UP_SCRIPT="files/"
NET_DOWN_SCRIPT="files/netDOWN.sh"

cp files/netUP.sh /usr/local/bin
chown root:root /usr/local/bin/netUP.sh
chmod 755 /usr/local/bin/netUP.sh

cp files/netDOWN.sh /usr/local/bin
chown root:root /usr/local/bin/netDOWN.sh
chmod 755 /usr/local/bin/netDOWN.sh

