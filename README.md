Linux - Autoinstall:

LAUS = L(inux) A(utomatic) U(pdate) S(ystem)

Introduction:
Laus is the german word for louse or cootie.
LAUS should be a small and easy system to manage groups of Linux-workstations.
The idea is simple.
If a workstation (laus-client) starts, it connects to an special workstation (laus-server) for scripts to execute.
At the beginning it was written for SUSE - Linux, but this version is made for UBUNTU - Linux.

Laus-Client:
Two files and the nfs-client package are needed.
*	Configuration-file in:			/etc/default/laus-setup
*	Upstart-script in:			/etc/init/laus-client.conf
/etc/init/laus-client.conf connects via nfs to the laus-server and executes laus-server.sh script.

Laus-Server:
The LAUS-Server hostes an nfs-share, which is located at /opt/autoinstall, but can be anywhere.
Two files and an nfs-server package are needed:
*	'The' Server-script in:		/opt/autoinstall/laus/laus-server.sh
*	Host to Classes File in:	/opt/autoinstall/laus/hostToClasses
and of course, all your own scripts in
*	MY_OWN_SCRIPTS in:			/opt/autoinstall/laus/scriptsForClasses/"Directory - Tree with your own scripts"
Then any laus-client connects via "/etc/init/laus-client.conf" to the laus-server and executes the script "/opt/autoinstall/laus/laus-server.sh".
"laus-server.sh" checks in "/opt/autoinstall/laus/hostToClasses", if a "part" of the hostname is found and in which subdirectories of "/opt/autoinstall/laus/scriptsForClasses/" scripts shall be executed.

Example 1: (Hostname is assigned to directories, which are containig the scripts.)

The line
r099pc04;UBUNTU1404 BEAMER VMS
in 
/opt/autoinstall/laus/hostToClasses 
meens:
for workstation r099pc04 execute all scripts found in 
*	/opt/autoinstall/laus/scriptsForClasses/UBUNTU1404
*	/opt/autoinstall/laus/scriptsForClasses/BEAMER
*	/opt/autoinstall/laus/scriptsForClasses/VMS


Example 2: (Similar Hostname are assigned to directories and subdirectories, which are containig the scripts.)
The line
r001;UBUNTU1404 UPDATE;R001
in
/opt/autoinstall/laus/hostToClasses 
meens:
for all workstation, which hostname starts with r001 execute all scripts found in 
*	/opt/autoinstall/laus/scriptsForClasses/UBUNTU1404
*	/opt/autoinstall/laus/scriptsForClasses/UBUNTU1404/R001
*	/opt/autoinstall/laus/scriptsForClasses/UPDATE/
*	/opt/autoinstall/laus/scriptsForClasses/UPDATE/R001


Branches:

master
*	Branch for current Release of LAUS for Ubuntu 14.04

