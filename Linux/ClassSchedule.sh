#!/bin/bash

read -p "What day is it today?   " weekday

if [ $weekday == "Saturday" ] || [ $weekday == "Sunday" ]
then
	echo "It is a holiday :)"
elif [ $weekday == "Tuesday" ] || [ $weekday == "Friday" ]
then
	echo "It is an off-day, but gotta do assignments!"
elif [ $weekday == "Monday" ]
then
	echo "It is Prof.Takis class today"
elif [ $weekday == "Wednesday" ]
then
	echo "It is Linchen's and Mike's class today"
elif [ $weekday == "Thursday" ]
then
	echo "Math class! Also, Signals & Systems :("
else
	echo "Invalid entry"
fi
