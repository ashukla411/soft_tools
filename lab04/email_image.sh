#!/bin/sh

for file in "$@"
do
	display "$file" gm time 1
	subject=$(echo "$file" | sed "s/\.[a-z]*$//")
	echo "Address to email this image to? "
	read email
	echo "Message to accompany image? "
	read message
	echo "$message" |mutt -s "$subject!" -e 'set copy=no' -a "$file" -- "$email"
done
