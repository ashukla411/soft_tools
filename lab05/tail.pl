#!/usr/bin/perl -w 

foreach $arg (@ARGV)
{
	if ($arg =~ /-[0-9]+/){ $lines = $arg * -1; }
	else{ push @files,$arg; }
}
if (!$lines) { $lines=10; }
foreach $file (@files)
{
	if(@files > 1)
	{
		print  "==> $file <==\n";
	}
	open F, '<', $file or die "$0: can't open $file\n";
	@content = reverse <F>;
	$n = @content;
	if ($n<=$lines-1) { print reverse @content; }
	else { print reverse @content[0..$lines-1]; }
	close F;
}
