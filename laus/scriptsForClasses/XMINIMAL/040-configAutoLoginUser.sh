#!/bin/bash

mkdir /etc/systemd/system/getty@tty1.service.d
cd /etc/systemd/system/getty@tty1.service.d

## important: use ' instead " to quote $ in $TERM
echo '
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin user --noclear %I $TERM
' > /etc/systemd/system/getty@tty1.service.d/override.conf
