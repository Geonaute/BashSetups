#!/usr/bin/bash

clear

#global variables

user=$(whoami)
break="================================================="

echo
echo "Invoking Daemon..."
echo
echo $break
echo
#apt-get update
echo $break
echo -n "First Name: "
read fname
echo -n "Last Name: "
read lname
#echo $fname $lname
#firefox http://www.411.com/name/$fname-$lname/
apt-cache search a > list.txt
cat list.txt | grep net
apt-get install mtr -y
echo $break
ifconfig | grep inet 
echo $break
echo
echo "All Done " $fname $lname"!!"


