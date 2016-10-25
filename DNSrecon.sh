#!/usr/bin/bash

echo "-- Invoking DNS Recon Daemon --"
echo 
echo -n "Type DNS name: "
read dnsname 
#Check for no response
if [ -z $dnsname ]; then
	echo
	echo "You did not enter a value"
	exit
fi
echo
echo "Good Job. Starting on "
echo
read -p "Press <enter> to continue."

firefox &
sleep 2
firefox -new-tab http://www.dnsstuff.com/tools#dnsReport|type=domain&&value=$dnsname  &
#firefox -new-tab http://www.cvgadget.com/person/$fname/$lname &
#firefox -new-tab https://pipl.com/search/?q=$fname+$lname &
#firefox -new-tab http://www.peekyou.com/$fname_$lname & 
#firefox -new-tab http://www.spokeo.com/search?q=$fname+$lname & 
#firefox -new-tab http://www.zabasearch.com/people/$fname+$lname/ &

#phonenumbers.addresses.com/people/$fname+$lname

