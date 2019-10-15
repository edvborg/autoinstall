#!/bin/bash

# quiet installation
export DEBIAN_FRONTEND=noninteractive

apt -y remove gimp*

add-apt-repository ppa:otto-kesselgulasch/gimp

apt update

apt -y install gimp

