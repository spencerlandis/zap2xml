#!/bin/sh

# start cron
#/usr/sbin/crond -f -l 8
httpd-foreground &
while :
do
	DATE=`date`
	/zap2xml.pl -u $USERNAME -p $PASSWORD -U -o /usr/local/apache2/htdocs/$XMLTV_FILENAME $OPT_ARGS
	echo "Last run time: $DATE"
	echo "Will run in $SLEEPTIME seconds"
	sleep $SLEEPTIME
done
