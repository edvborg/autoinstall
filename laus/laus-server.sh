#! /bin/bash
#
## source system - functions
. /lib/init/vars.sh
. /lib/lsb/init-functions

# Shell Variables sourced from 
# "LAUS calling Client"/etc/default/laus-setup
. /etc/default/laus-setup

## ENABLE_AUTOUPDATE="yes"
# Server hosting all LAUS - scripts:
## LAUS_SERVER="laus01"
# Rootpath,where LAUS - directory is stored:
## PATH_ON_LAUS_SERVER="/autoinstall"
# Directory, relativ to PATH_ON_LAUS_SERVER, where laus_server.sh - script is stored:
## LAUS_PATH="laus"
# Mountpoint on client, for Serverdirectory
## MOUNT_PATH_ON_CLIENT="/opt/autoinstall"
# Path, where updatelogfiles are written to:
## UPDATE_LOG_DIR="/var/log/laus"

# Updatescripts may not be executed on LAUS-SERVER!
if test $(hostname) = ${LAUS_SERVER}
then
	log_action_begin_msg "Updatescript may not run on  laus - Server!"
	echo "Updatescript may not run on  laus - Server!"
	exit 7
fi

######################################################################################
################## Helper Function ###################################################
######################################################################################

# Function for executing all Scripts in Directory
function executeScripts {
	if [ -z $1 ];
	then
		classHirarchy="ALLCLASSES";
	else
		classHirarchy="ALLCLASSES."$1;
	fi

	fileList=$(ls)
	for file in ${fileList}; do
		# test, if file is executable and does not end with ~
		if [ -f ${file} -a -x ${file} -a ${file} = ${file%"~"} ];
		then
			# test, if script has already been executed on this workstation
			if [ -f ${UPDATE_LOG_DIR}"/"${classHirarchy}"."${file} ]
			then
				log_action_begin_msg "already executed --> "${classHirarchy}"."${file}
				#echo "already executed --> "${classHirarchy}"."${file}
			else
				log_action_begin_msg "running LAUS script --> "${classHirarchy}"."${file}
				#echo "running LAUS script --> "${classHirarchy}"."${file}
				"./"${file} ${startParameter}
				# if script has been executed, log it"
				if [ $? -eq 0 ];
				then
					cp ${file} ${UPDATE_LOG_DIR}"/"${classHirarchy}"."${file}
				fi
			fi
		fi
	done
}


######################################################################################
################## S T A R T   O F   S C R I P T #####################################
######################################################################################

# set HOSTCLASS Variable from File hostsToClasses
# check like tftp:
# for hostname r001pc12
# test following Strings:
# #1: r001pc12
# #2: r001pc1
# #3. r001pc
# ...
# #8: r
#
# and collect all information in:
# HOSTCLASS, SUBHOSTCLASS and SUBSUBHOSTCLASS
#
# see: HOSTCLASS=${HOSTCLASS}" "$(grep ^${TESTSTRING}";" hostsToClasses | awk 'BEGIN { FS = ";" } { print $2 }')
# and so on!
#
# hostsToClasses in format:
# HOSTNAME;HOSTCLASS;SUBHOSTCLASS;SUSUBHOSTCLASS
# r001pc50;TEACHER BEAMER;BEAMER_1024x768
# r001;R001
# => HOSTCLASS for PC with hostname r001pc50: TEACHER BEAMER R001
#    and SUBHOSTCLASS=BEAMER_1024x768
#
TESTSTRING=$(hostname)
for ((length=${#TESTSTRING};  length > 0; length--)) 
do
	TESTSTRING=${TESTSTRING:0:length}
	if grep ^${TESTSTRING}";" hostsToClasses
	then
		HOSTCLASS=${HOSTCLASS}" "$(grep ^${TESTSTRING}";" hostsToClasses | awk 'BEGIN { FS = ";" } { print $2 }')
		SUBHOSTCLASS=${SUBHOSTCLASS}" "$(grep ^${TESTSTRING}";" hostsToClasses | awk 'BEGIN { FS = ";" } { print $3 }')
		SUBSUBHOSTCLASS=${SUBSUBHOSTCLASS}" "$(grep ^${TESTSTRING}";" hostsToClasses | awk 'BEGIN { FS = ";" } { print $4 }')
	fi
done

# souround List of hosts with () to cast to array
HOSTCLASS=(${HOSTCLASS})
SUBHOSTCLASS=(${SUBHOSTCLASS})
SUBSUBHOSTCLASS=(${SUBSUBHOSTCLASS})

log_action_begin_msg "LAUS START --------------------------------------"

#### Startparameter mitteilen z.B: start, stop, cron
startParameter=$1

# run scripts for all hosts
cd scriptsForClasses
executeScripts

# run scripts for classes, sub- and subsubclasses

for hostclass in ${HOSTCLASS[@]}; do
	if test -d ${hostclass}; 
	then
		cd ${hostclass};
		executeScripts ${hostclass};
		for subhostclass in ${SUBHOSTCLASS[@]}; do
			if test -d ${subhostclass}; 
			then
				cd ${subhostclass};
				executeScripts ${hostclass}"."${subhostclass};
				for subsubhostclass in ${SUBSUBHOSTCLASS[@]}; do
					if test -d ${subsubhostclass}; 
					then
						cd ${subsubhostclass};
						executeScripts ${hostclass}"."${subhostclass}"."${subsubhostclass};
						cd ..;
					fi;
				done;
				cd ..;
			fi;
		done;
		cd ..;
	fi;
done

log_action_begin_msg "LAUS STOP ---------------------------------------"



