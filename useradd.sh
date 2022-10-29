#!/bin/bash

### Author Nietcho ###
# Creation Date: 2022-10-29

### Script For Account Creation Automation For New Employees
### Modification Date 2022-10-29

echo "####### ENTER YOUR PERSONAL IFORMATION ######"
echo
echo "enter your first name"
read fname
echo "enter your last name"
read lname
echo "enter your email address"
read email
echo "enter your title"
read prof
echo "create a username" 
read uname
echo "enter your password"
read pss
cat /etc/passwd |grep -q -i $uname
	if [ $? -eq 0 ]
	then
	echo "ERROR  $uname Already Exists"
	echo "Please Choose Another USERNAME"
	exit 0
	fi
useradd $uname -c "$fname $lname; $prof; email"; echo $pss |passwd --stdin $uname

