#!/bin/bash
a=4 #hard-coded values of a and b
b=2
add=`expr $a + $b`
echo "a+b=$add"
sub=`expr $a - $b`
echo "a-b=$sub"

if (($a-gt$b))
then
	echo "a>b=True"
fi

if (($ax-lt$b))
then
	echo "a<b=True"
fi
