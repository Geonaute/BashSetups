#!/usr/bin/bash

echo "-- Invoking Robots Daemon --"
rm robots.txt 2>/dev/null
echo
break="======================================"
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
echo You got it $dnsname!
wget $dnsname/robots.txt
echo $break
#awk example
cat robots.txt | grep 'Disallow' | awk '{print $2}' > tmp

cat tmp
#cut example
# cat robots.txt | grep 'Disallow' | cut -d ' ' -f2 > tmp
