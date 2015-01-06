Linux - Autoinstall:

LAUS = L(inux) A(utomatic) U(pdate) S(ystem)

Introduction:
Laus is the german word for louse or cootie.
LAUS should be a small and easy system to manage groups of Linux-workstations.
The idea is simple.
If a workstation (laus-client) starts up, it connects to an special workstation (laus-server) and checks there for scripts to execute.
At the beginning it was written for SUSE - Linux, but this version is made for UBUNTU - Linux.

Laus-Client:
Two files and the nfs-client package are needed:
*	Configuration-file in:			/etc/default/laus-setup
*	Upstart-script in:			/etc/init/laus-client.conf
/etc/init/laus-client.conf connects via nfs to the laus-server and executes laus-server.sh script.

Laus-Server:
The LAUS-Server hostes an nfs-share, which is located at /opt/autoinstall, but can be anywhere.
Two files and an nfs-server package are needed:
*	'The' Server-script in:		/opt/autoinstall/laus/laus-server.sh
*	Host to Classes File in:	/opt/autoinstall/laus/hostToClasses
and of course, all your own scripts in
*	OWN_SCRIPTS in:			/opt/autoinstall/laus/scriptsForClasses/"Directory - Tree with your own scripts"
Then any laus-client connecting via "/etc/init/laus-client.conf" executes the script "/opt/autoinstall/laus/laus-server.sh".
"laus-server.sh" checks in "/opt/autoinstall/laus/hostToClasses", if a "part" of the hostname is found and in which subdirectories of "/opt/autoinstall/laus/scriptsForClasses/" scripts shall be executed.
In laus-server.sh the "part" of hostname is checked similar the tftp-server does:
for hostname r001pc12
the following 8 Strings are tested, if they can be found in "/opt/autoinstall/laus/hostToClasses"
#1: r001pc12:
#2: r001pc1:
#3. r001pc:
...
#8: r:

If one ore more are found, all classes (directory - pathes) are collected and all scripts in these pathes are executed.

Example 1: (One Hostname is assigned to directories, which are containig the scripts.)

The line
r099pc04:UBUNTU1404 BEAMER VMS
in 
/opt/autoinstall/laus/hostToClasses 
meens:
for workstation r099pc04 execute all executable scripts found in 
*	/opt/autoinstall/laus/scriptsForClasses/UBUNTU1404
*	/opt/autoinstall/laus/scriptsForClasses/BEAMER
*	/opt/autoinstall/laus/scriptsForClasses/VMS


Example 2: (Similar Hostnames are assigned to directories and subdirectories, which are containig the scripts.)
The line
r001:UBUNTU1404 VMS UPDATE UPDATE/R001 PRINTER/HP_LASER
in
/opt/autoinstall/laus/hostToClasses 
meens:
for all workstation, which hostname starts with r001 (f.E.: r001pc01, r001pc02, ...) execute all scripts found in 
*	/opt/autoinstall/laus/scriptsForClasses/UBUNTU1404
*	/opt/autoinstall/laus/scriptsForClasses/VMS
*	/opt/autoinstall/laus/scriptsForClasses/UPDATE/
*	/opt/autoinstall/laus/scriptsForClasses/UPDATE/R001
*	/opt/autoinstall/laus/scriptsForClasses/PRINTER/HP_LASER


Technical Detail:
* Order of script - execution:
Scripts are executed in the same order as they apear in the filesystem.
Classes are executed in the order in witch they are apear in hostToClasses

* Logging, Scripts running once
Executed spripts are logged in /var/log/laus with an easy syntax:
all scripts start with ALLCLASSES and "/" is replaced with ".".
for example:
*	autoinstall/scriptsForClasses/UBUNTU1404/020-installUbuntuDesktop.sh
is logged as
*	/var/log/laus/ALLCLASSES.UBUNTU1404.020-installUbuntuDesktop.sh
If a script is logged, it will not be executed any more. 
So removing ALLCLASSES.UBUNTU1404.020-installUbuntuDesktop.sh in /var/log/laus meens, that 020-installUbuntuDesktop.sh will
be executed the next time, the laus-client starts.

Branches:

master
*	Branch for current Release of LAUS for Ubuntu 14.04

