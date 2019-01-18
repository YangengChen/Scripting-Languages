#!usr/bin/perl

use strict;
use warnings;

my $plaintext = "the most important thing in the programming language is the name. a language will not succeed without a good name. i have recently invented a very good name and now i am looking for a suitable language. donald knuth";
my $counter = 1;
my $encryptText = "";

foreach my $char (split //, $plaintext) {
	$encryptText = $encryptText.''.encrypt($char, \$counter);
	$counter += 1;
}

print "$encryptText\n";

sub encrypt{
	my $letter = $_[0];
	my $pos = $_[1];
	my $shift = ord($letter)+(($$pos)%26);
	if (ord($letter) > 96 and ord($letter) < 123) {
		if ($shift > 122) {
			$shift -= 26;
		}
		return chr($shift);
	} else {
		$$pos -= 1;
		return $letter;
	}
}