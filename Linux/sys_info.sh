#!/bin/bash

printf "What system info do you need? \n0) all\n1) [hostname]\n2) [kernel-name]\n3) [OS]\n4) [processor]\n5) [kernel-release]\n6) [kernel-version]\n"
read -p "Your option number: " info

if [ $info -eq "0" ]
then
	uname -a
elif [ $info -eq "1" ]
then
	uname -n
elif [ $info -eq "2" ]
then
        uname -s
elif [ $info -eq "3" ]
then
	uname -o
elif [ $info -eq "4" ]
then
	uname -p
elif [ $info -eq "5" ]
then
        uname -r
elif [ $info -eq "6" ]
then
	uname -v
else
echo "Please enter a valid option"
fi
