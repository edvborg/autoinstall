#!/bin/bash

if [[ $USER == testee* ]];
then
	# we have to create Schreibtisch first, because it does not exit in this moment
	mkdir $HOME/Schreibtisch
	chown $USER:2000 $HOME/Schreibtisch
	
	ln -s /home/shares/schueler/Testees/Abgabe_$USER $HOME/Schreibtisch/Abgabe_$USER
	chown $USER:2000 $HOME/Schreibtisch/Abgabe_$USER

	ln -s /home/shares/schueler/Testees/Abgabe_$USER $HOME/Abgabe_$USER
	chown $USER:2000 $HOME/Abgabe_$USER

	ln -s /home/shares/schueler/Testees/Vorlagen/ $HOME/Schreibtisch/Vorlagen
	chown $USER:2000 $HOME/Schreibtisch/Vorlagen
fi


