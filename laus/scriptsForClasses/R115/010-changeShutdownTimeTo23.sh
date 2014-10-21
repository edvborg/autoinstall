#! /bin/bash

file="/etc/cron.hourly/shutDownAt22Clock"
newfile="/etc/cron.hourly/shutDownAt23Clock"

sed '/if [ $CURRENT_HOUR -eq "22" ]/ s/"22"/"23"/' $file > $newfile

chmod 755 $newfile
rm $file



