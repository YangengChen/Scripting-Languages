#!usr/bin/perl

use strict;
use warnings;

my %nums = ();
my %primes = ();
my $num_count = 0;
my $prime_count = 0;

while(1) {
 print "Enter an int: ";
 my $number=<STDIN>;
 if ($number > 1) {
  $nums{$number} = 1;
 }
 if ($number == -1) {
  while(my($num, $x) = each %nums){
   $num_count += 1;
  }
  while(my($prime, $y) = each %primes){
   $prime_count += 1;
  }
  print "Unqiue numbers: $num_count, $prime_count being prime.";
  $num_count = 0;
  $prime_count = 0;    
  last;
 }
 if ($number < 2) {
  print "Must be a number 2 or larger\n";
  next;
 }
 if (isPrime($number,$number-1)) {
  $primes{$number} = 1;
  print "prime\n";
  next;
 }
 my @factors = ();
 my $divisor = 2;
 while($divisor != $number) {
  if($number % $divisor == 0) {
   print "$divisor " 
  }
  $divisor += 1;
 }
 print "\n";
}

sub isPrime{
 my $n = $_[0];
 my $q = $_[1];
 return 1 if $q == 1;
 return 0 if $n % $q == 0;
 return (isPrime($n,$q-1));
 }
 





