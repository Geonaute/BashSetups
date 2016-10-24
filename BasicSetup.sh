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
#echo -n "First Name: "
#read fname
#echo -n "Last Name: "
#read lname
#echo $fname $lname
#firefox http://www.411.com/name/$fname-$lname/
apt-cache search a > list.txt
cat list.txt | grep net
echo $break
ifconfig | grep inet 
echo $break
apt-get install mtr -y
echo "MTR installed"
echo $break
apt-get install ufw -y
echo "UFW installed"
echo $break
ufw allow ssh 
ufw allow https
ufw allow http
ufw allow ftp
ufw enable
echo "UFW enabled"
echo $break
ufw status numbered

