#!/bin/sh
i=1
if [ $# -ne 2 ]
then
	echo "Usage: $0 <number of lines> <string>"
	exit 1
fi
if [ $1 -ge 0 ] 2> /dev/null
then
	while test $i -le $1 
	do
		echo $2
		i=`expr $i + 1`
	done
else
	echo "$0: argument 1 must be a non-negative integer"
fi
