#!usr/bin/perl

use strict;
use warnings;

while(1) {
	my $flag = 0;
	my $string = <STDIN>;
	while ($string =~ /$ARGV[0]/g) {
		print "$`<$&>$'\n";
		$flag = 1;
	}
	print "no match\n" if ($flag == 0);
	$flag = 0;
}