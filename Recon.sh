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
read -p "Press <enter> to continue."

#firefox http://www.411.com/name/$fname-$lname/ &
firefox http://www.cvgadget.com/person/$fname/$lname &
#firefox -new-tab http://peekyou.com/$fname_$lname
#http://pipl.com
#phonenumbers.addresses.com/people/$fname+$lname

