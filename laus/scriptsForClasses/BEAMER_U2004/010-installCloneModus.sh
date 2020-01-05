#! /bin/bash

# create 
# desktop-file : /usr/share/gdm/greeter/autostart/app-clone.desktop
# with link to 
# shell-script : /usr/local/bin/clone
# to clone greeter screen before login
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=APP Clone Desktop Screens
Name[de]=Skript zum Klonen des Desktops bei Beamerbenutzung
Exec=/usr/local/bin/clone
Terminal=false
NoDisplay=true
" >> /usr/share/gdm/greeter/autostart/app-clone.desktop



# create 
# desktop-file : /etc/xdg/autostart/app-clone.desktop
# with link to 
# shell-script : /usr/local/bin/clone
# to clone screen after login
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=APP Clone Desktop Screens
Name[de]=Skript zum Klonen des Desktops bei Beamerbenutzung
Exec=/usr/local/bin/clone
Terminal=false
X-GNOME-Autostart-Phase=Applications
NoDisplay=true
" >> /etc/xdg/autostart/app-clone.desktop


# Copy - Settings - File
cp  files/clone-settings	/etc/default/
chmod 644 /etc/default/clone-settings

# Copy - clone - File
cp  files/clone			/usr/local/bin/
chmod 755 /usr/local/bin/clone

