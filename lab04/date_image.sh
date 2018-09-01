#!/bin/sh

date=`ls -l "$1" | cut -d\  -f6-8`

tmp=$(mktemp /tmp/"$1".XXXXXX)

message='Hi Hang Su, I am sending "Exercise: Date A Penguin?" result to you.\nPlease have a look at the attached file.\nPlease do the peer assessment for me, use "display filename" command to see it from terminal.\nThanks Again,\nAshish Shukla,\nzid = 5151301.'

subject='Peer Assessment-Ashish,Thanks!'

email="408573230@qq.com"

convert -fill purple -gravity center -pointsize 36 -draw "text 0,0 '$date'" "$1" "$tmp"

display "$tmp"

echo -e "$message" | mutt -s "$subject" -e 'set copy=no' -a "$tmp" -- "$email"

rm "$tmp"
