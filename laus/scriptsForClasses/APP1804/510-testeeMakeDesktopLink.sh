#!/bin/bash

# create 
# desktop-file : /etc/xdg/autostart/app-makeDesktopLinkForTestees.desktop
# with link to 
# shell-script : /usr/local/bin/makeDesktopLinkForTestees.sh
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=Testee Desktop Links
Name[de]=Skript zum Erstellen der Desktop Links für Testee Benutzer
Exec=/usr/local/bin/makeDesktopLinkForTestees.sh
Terminal=false
X-GNOME-Autostart-Phase=Applications
NoDisplay=true
" >> /etc/xdg/autostart/app-makeDesktopLinkForTestees.desktop

# create
# shell script : /usr/local/bin/makeDesktopLinkForTestees.sh
# ATTENTION ' instead " because $USER shall NOT be interpreted
echo '#!/bin/bash

if [[ $USER == testee* ]];
then
	ln -s /home/shares/schueler/Testees/Abgabe_$USER $HOME/Schreibtisch/Abgabe_$USER
	
	ln -s /home/shares/schueler/Testees/Abgabe_$USER $HOME/Abgabe_$USER
	
	ln -s /home/shares/schueler/Testees/Vorlagen/ $HOME/Schreibtisch/Vorlagen
fi
' >> /usr/local/bin/makeDesktopLinkForTestees.sh

chmod a+x /usr/local/bin/makeDesktopLinkForTestees.sh

