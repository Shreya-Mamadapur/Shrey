#!/bin/bash

read -p "Have you connected an USB to your desktop port? [Y/N]" ans

if [ $ans == "Y" ] || [ $ans == "y" ]
then
	dmesg | grep ttyUSB
	printf "\n\tUSB port(on desktop) number is mentioned in the above line\n"
else
	echo "Please connect and execute again!"
fi
