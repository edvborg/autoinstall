#!/bin/bash

#. /etc/default/laus-setup

FEEDBACK_SERVER="laus01"
FEEDBACK_PATH="/autofeedback"
MOUNT_PATH_ON_CLIENT="/mnt"


# write all Feedback Stuff in Function doWork
function doWork {

	#lshw -short >> $(hostname)
	ls -hal /home >> $(hostname)
}


# mout directory from feedbackserver and run doWork()
mount -o soft -t nfs4 $FEEDBACK_SERVER:$FEEDBACK_PATH $MOUNT_PATH_ON_CLIENT
if test $? -eq 0;
then
	LAST_PATH=$(pwd)
	cd $MOUNT_PATH_ON_CLIENT
	doWork $1
	cd $LAST_PATH
	umount $MOUNT_PATH_ON_CLIENT
else
	# echo "Zugriff auf "$FEEDBACK_SERVER" ist fehlgeschlagen"
	echo "Connection to "$FEEDBACK_SERVER" failed!"
fi

