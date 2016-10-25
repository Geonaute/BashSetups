#!/usr/bin/bash

echo "-- Invoking OpenList Daemon --"
echo 
echo -n "List of URLs: "
read openlist 
#Check for no response
if [ -z $openlist ]; then
	echo
	echo "You are missing a location"
	exit
fi
if [ ! -f $openlist ]; then
        echo
        echo "File doesnt exist"
        exit
fi
echo
echo "Good Job. Starting on $openlist..."

#firefox &
#sleep 2
#firefox -new-tab http://$openlist &


