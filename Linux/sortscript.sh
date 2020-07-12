#!/bin/bash

ERROR_CODE=42
if [ -n "$8" ]
then
	echo “Incorrect usage: no more than 7 elements allowed!”
	exit $ERROR_CODE
fi

echo "After sorting:"
for elements in "$@"
do
	echo "$elements"
done | sort
