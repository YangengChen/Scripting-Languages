#!usr/bin/perl

use strict;
use warnings;

my $eNum = 0;
my $rNum = 0;
my $wNum = 0;
my $xNum = 0;
my $tNum = 0;

open INPUT, "< $ARGV[0]" or die "Can't open file:$!";
open eFile, "> efiles.txt" or die "Can't open file:$!";
open rFile, "> rfiles.txt" or die "Can't open file:$!";
open wFile, "> wfiles.txt" or die "Can't open file:$!";
open xFile, "> xfiles.txt" or die "Can't open file:$!";
open tFile, "> tfiles.txt" or die "Can't open file:$!";


while(my $line = <INPUT>){ 
	chomp($line);
	print $line,"\n";
	if(-e $line) {
		print eFile "$line ";
		$eNum += 1;
	}
	if(-r $line) {
		print rFile "$line ";
		$rNum += 1;
	}
	if(-w $line) {
		print wFile "$line ";
		$wNum += 1;
	}
	if(-x $line) {
		print xFile "$line ";
		$xNum += 1;
	}
	if(-T $line) {
		print tFile "$line ";
		$tNum += 1;
	}
}

close INPUT;
close eFile;
close rFile;
close wFile;
close xFile;
close tFile;

open eFile, "< efiles.txt" or die "Can't open file:$!";
open rFile, "< rfiles.txt" or die "Can't open file:$!";
open wFile, "< wfiles.txt" or die "Can't open file:$!";
open xFile, "< xfiles.txt" or die "Can't open file:$!";
open tFile, "< tfiles.txt" or die "Can't open file:$!";

my $eline = <eFile>;
my $rline = <rFile>;
my $wline = <wFile>;
my $xline = <xFile>;
my $tline = <tFile>;

print "$eNum existing files:\t", $eline = ""?$eline = "\n":"$eline\n" ;
print "$rNum readable files:\t", $rline = ""?$rline = "\n":"$rline\n";
print "$wNum writable files:\t", $wline = ""?$wline = "\n":"$wline\n";
print "$xNum executable files:\t", $xline = ""?$xline = "\n":"$xline\n";
print "$tNum plain text files:\t", $tline = ""?$tline = "\n":"$tline\n";
