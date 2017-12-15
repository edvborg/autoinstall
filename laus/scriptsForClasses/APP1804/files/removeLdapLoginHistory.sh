#!/bin/bash

USER_LIST=$(ls /var/lib/AccountsService/users)

for USER in $USER_LIST;
do
	if ! grep -q $USER /etc/passwd;
	then
		rm /var/lib/AccountsService/users/$USER
	fi
done

rm /var/log/wtmp
touch /var/log/wtmp
