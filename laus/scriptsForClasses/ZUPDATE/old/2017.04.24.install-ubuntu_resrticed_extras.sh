#!/bin/bash

apt-get -y update

# quiet installation
export DEBIAN_FRONTEND=noninteractive

## some Multimedia - Codecs
apt-get -y install ubuntu-restricted-extras
