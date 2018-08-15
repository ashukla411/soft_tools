#!/bin/sh
cat1=10
cat2=100
small=""
med=""
large=""
for file in *
do
	lines=`wc -l $file | cut -d' ' -f1`
	if [ $lines -lt $cat1 ]
	then
		small=$small" $file"
	elif [ $lines -lt $cat2 ] && [ $lines -ge $cat1 ]
	then
		med=$med" $file"
	else
		large=$large" $file"
	fi
done
echo Small files:$small
echo Medium-sized files:$med
echo Large files:$large
