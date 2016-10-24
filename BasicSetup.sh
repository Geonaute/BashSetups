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
echo $fname
