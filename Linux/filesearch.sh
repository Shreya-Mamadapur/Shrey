#!/bin/bash

dir=~/Documents/folder
file=$dir/ese2025.txt

if [[ ! -e $file ]] #if file does not exists
then
	touch $file
	echo "Found first!" > $file
else
	echo "Found again!!" >> $file
fi



