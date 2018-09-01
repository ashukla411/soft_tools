#!/bin/sh

for dirs in "$@"
do
	album=`echo "$dirs" | egrep -o "\/.*[0-9]{4}" | sed "s/\///"`
	year=`echo "$album" | egrep -o "[0-9]{4}$"`
	for file in "$dirs"/*
	do
		if test -f "$file"
		then
			details=`ls "$file"`
			track=`echo "$details"| cut -d'-' -f1 | egrep -o "[0-9]+ $"`
			#echo "$track"
			title=`echo "$details" | cut -d'-' -f2 | sed "s/^ *//"`
			artist=`echo "$details" | cut -d'-' -f3 | sed "s/.mp3//g;s/^ *//"`
#			echo "$artist"
			id3 -T "$track" "$file" >/dev/null
			id3 -A "$album" "$file" >/dev/null
			id3 -t "$title" "$file" >/dev/null
			id3 -a "$artist" "$file" >/dev/null
			id3 -y "$year" "$file" >/dev/null
		fi
	done
done
