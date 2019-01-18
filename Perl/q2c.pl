#!usr/bin/perl

use strict;
use warnings;
use List::Util "reduce";

my @l1 = (1,2,3,4,5,6);
my @l2 = (1,3,5,7,9);
my @l3 = (2,6,10,14,18);

print sum(@l1),"\n";
print sum(@l2),"\n";
print sum(@l3),"\n";

sub sum{
	my @list = @_;
	if ($list[0] % 2 == 0) {
		$list[0] = $list[0] / 2;
	}
	return reduce {$b % 2 == 1 ? $a+$b : $a+($b/2)} @list
}