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


firefox &
sleep 2

# Read list and open each in a new tab
for i in $(cat $openlist); do
	firefox -new-tab $i &
	sleep 1
done	

#firefox -new-tab http://$openlist &


