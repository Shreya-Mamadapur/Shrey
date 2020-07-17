#!/bin/bash

read -p "Enter the file name: " filename
printf "Your desired file is in the following paths:\n"
sudo find / -name $filename
