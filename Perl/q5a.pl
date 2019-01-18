#!usr/bin/perl

use strict;
use warnings;

my $cipherText = lc "Ujh qtya qvzzdgocj kzbhb ek rge qtrkwgturxr xnbvkryx cn pec mang. D pftncjqp ivza dfl loxybcc wjvkszz h oxyo znat. Y ysoy mazcmtma lrakubnn l hrfn wfgw hvib ymd oqz M fs swxutzt tdh r kncowyjd lbpjyfml. Lxxlxq Yckkz ";
my $counter = 1;
my $plaintext = "";
#my $encryptText = "";

foreach my $char (split //, $cipherText) {
	$plaintext = $plaintext.''.decrypt($char, \$counter);
	$counter += 1;
}

$counter = 1;
print "$plaintext\n\n";

#foreach my $char (split //, $plaintext) {
#	$encryptText = $encryptText.''.encrypt($char, \$counter);
#	$counter += 1;
#}

#print $encryptText;

sub decrypt{
	my $letter = $_[0];
	my $pos = $_[1];
	my $shift = ord($letter)-(($$pos)%26);
	if (ord($letter) > 96 and ord($letter) < 123) {
		if ($shift < 97) {
			$shift += 26;
		}
		return chr($shift);
	} else {
		$$pos -= 1;
		return $letter;
	}
}

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