#!usr/bin/perl

use strict;
use warnings;

while(<>) {
	my $string = $_;
	chomp$string;
	$string =~ s/<\/?span>//g;
	if ($string =~ s/<\/?p>//g) {
		print $string,"<br><br>\n";
	}
}