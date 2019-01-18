#!usr/bin/perl

use strict;
use warnings;

my $PATH = $ENV{'PATH'};
my $contents = `echo $PATH`;
my @arr = $contents =~ /(\/[^:]*)/g;
foreach (@arr) {
	print $_,"\n";
}