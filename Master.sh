#!/usr/bin/bash

clear

echo
echo 
echo "Welcome to Deamon Industries"
echo "===This is the master controler=="
echo
echo
break="==============================="
echo $break
echo "1. Recon People"
echo "2. Recon Domain"
echo "3. Open list in Firefox"
echo "4. Open Domain's robot.txt in firefox"
echo
echo -n "Choice: "
read choice

#echo $choicea
case $choice in
	1) sh Recon.sh;;
	2) sh DNSrecon.sh;;
	3) sh OpenList.sh;;
	4) sh Robots.sh;;
	*) echo "YOu have made An InValid Choice"
esac
