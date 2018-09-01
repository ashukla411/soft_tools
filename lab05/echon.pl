#!/usr/bin/perl -w

if(@ARGV == 2)
{
	$ntimes = shift @ARGV;
	$word = shift @ARGV;
	if($ntimes =~ /[0-9]/ && $ntimes >= 0)
	{
		foreach (1..$ntimes)
		{
			print $word."\n";
		}
	}
	else
	{
		print "$0: argument 1 must be a non-negative integer\n";
		exit 1;
	}
	
}

else
{
	print "Usage: $0 <number of lines> <string>\n";
}
