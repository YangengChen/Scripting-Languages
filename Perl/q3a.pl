#!usr/bin/perl

use strict;
use warnings;

while(1) {
	my $string = <STDIN>;
	$string =~ s/\s//g;
	print $string,"\n";
}