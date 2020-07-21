#!/bin/bash

read -p "Set the time in seconds: " count

for (( i=$count; i>0; i-- ))
do
printf " $i \n"
sleep 1
done
printf "STOP!\n"
