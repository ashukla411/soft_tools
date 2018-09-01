#!/bin/sh

for file in *.jpg
do
	newfile=$(echo "$file" | sed "s/\.jpg$/\.png/")
	if test -e "$newfile"
	then
		echo "$newfile already exists"
	else
		convert "$file" "$newfile"
		rm "$file"
	fi
done
