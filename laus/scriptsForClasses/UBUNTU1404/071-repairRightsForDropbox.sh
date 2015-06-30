#! /bin/bash

# x86_64 <=> 64 bit: 
# i686   <=> 32 bit: 

ARCHITECTURE=$(uname -m)

if [ $(uname -m) == "x86_64" ];
then
	chmod ugo+r /var/lib/dropbox/.dropbox-dist/dropbox-lnx.x86_64-3.6.7/futures-2.1.3-py2.7.egg/EGG-INFO/*
else
	chmod ugo+r /var/lib/dropbox/.dropbox-dist/dropbox-lnx.x86-3.6.7/futures-2.1.3-py2.7.egg/EGG-INFO/*
fi

