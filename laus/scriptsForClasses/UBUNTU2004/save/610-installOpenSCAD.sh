#!/bin/bash

# -y all queries to yes 
# -u automatic apt-get update
add-apt-repository -y -u ppa:openscad/releases

apt-get -y install openscad
				
