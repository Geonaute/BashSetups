#!/usr/bin/bash

echo "-- Invoking Recon Daemon --"
echo 
echo -n "Type First Name of recon-ee: "
read fname
#Check for no response
if [ -z $fname ]; then
	echo
	echo "You did not enter a value"
	exit
fi
echo
echo -n "Type Last Name of recon-ee: "
read lname
if [ -z $lname ];then
	echo
	echo "You didn't enter Last Name value"
	exit
fi
echo "Good Job. Starting on $fname $lname."
echo
#invoke firefox and sleep
firefox &
sleep 2
firefox -new-tab http://www.411.com/name/$fname-$lname/ &
sleep1
firefox -new-tab http://www.cvgadget.com/person/$fname/$lname &
sleep1
firefox -new-tab https://pipl.com/search/?q=$fname+$lname &
sleep1
firefox -new-tab http://www.peekyou.com/$fname_$lname &
sleep1
firefox -new-tab http://www.spokeo.com/search?q=$fname+$lname &
sleep1
firefox -new-tab http://www.zabasearch.com/people/$fname+$lname/ &
sleep1

#phonenumbers.addresses.com/people/$fname+$lname
