#!/bin/bash

# quiet installation
export DEBIAN_FRONTEND=noninteractive

apt-get -y remove geogebra5

rm /etc/apt/sources.list.d/geogebra.list
rm /etc/apt/sources.list.d/geogebra.list.save
