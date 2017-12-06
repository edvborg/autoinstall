#!/bin/bash

if [[ $USER == testee* ]];
then
	ln -s /home/shares/schueler/Testees/Abgabe_$USER $HOME/Schreibtisch/Abgabe_$USER
	chown $USER:2000 $HOME/Schreibtisch/Abgabe_$USER

	ln -s /home/shares/schueler/Testees/Abgabe_$USER $HOME/Abgabe_$USER
	chown $USER:2000 $HOME/Abgabe_$USER

	ln -s /home/shares/schueler/Testees/Vorlagen/ $HOME/Schreibtisch/Vorlagen
	chown $USER:2000 $HOME/Schreibtisch/Vorlagen

	cp /opt/vms/win7.desktop $HOME/Schreibtisch/
	chown $USER:2000 $HOME/Schreibtisch/win7.desktop
fi


