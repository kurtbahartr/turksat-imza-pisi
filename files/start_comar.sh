#!/bin/sh
PIDFILE=$1
cd /usr/local/signNativeOsService
su -c "/usr/bin/java -jar /usr/share/signNativeOsService/signNativeOsService.jar > /dev/null 2>&1 &"
PID=$!
echo $PID > $PIDFILE
