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
echo "Good Job. Starting on $dnsname..."
echo
read -p "Press <enter> to continue."

firefox &
sleep 2
firefox -new-tab http://intodns.com/$dnsname &
firefox -new-tab http://viewdns.info/dnsreport/?domain=$dnsname &

