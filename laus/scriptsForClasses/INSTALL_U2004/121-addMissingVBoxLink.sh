#!/bin/bash

if [ ! -f /usr/bin/VirtualBoxVM ];
then
        echo "Symlink /usr/bin/VirtualBoxVM -> /usr/share/virtualbox/VBox.sh is created"
        cd /usr/bin
        ln -s  ../share/virtualbox/VBox.sh VirtualBoxVM
fi
