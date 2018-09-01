#!/usr/bin/perl -w

foreach $line (<STDIN>){
	$line =~ s/[0-4]/</g;
	$line =~ s/[6-9]/>/g;
	print $line;
}
