#!/bin/bash

# DISABLE - ENABLE WWW for Testees

if [[ $USER == testee* ]];
then
	case "$1" in
	start)
		# disable English Dictionary
		chmod 640 /usr/share/hunspell/en*
 
		;;
	stop)
		# enable English Dictionary
		chmod 644 /usr/share/hunspell/en*
		;;
	esac
fi

## if something is broken, repair rights anyway
chmod 644 /usr/share/hunspell/en*
