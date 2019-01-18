#!usr/bin/perl

use strict;
use warnings;

my %states = ();
my $num_states = 0;
my $num_records = 0;

while(<>) {
	my @fields = split("\t", $_);
	my $state = $fields[5];
	if (!exists $states{$state}) {
		$states{$state} = 1;
	} else {
		$states{$state} += 1;
	}
}

foreach my $state(keys %states) {
	$num_states += 1;
}
print "There are total $num_states states in the database:\n";

while (my($state, $count) = each %states) {
	print "$state $count\n";
}

foreach my $record(values %states) {
	$num_records += $record;
}

print "Total $num_records records are processed successfully."

