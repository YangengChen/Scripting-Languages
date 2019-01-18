#!usr/bin/perl

use strict;
use warnings;

my %first_courses = (101 => ":)", 110 => "xD", 114 => ":(");
my %second_courses = (214 => ":o", 215 => ":D", 220 => ">:O");
my %third_courses = (300 => ":DD", 373 => ">:D", 320 => ">:|");
my @course_list = (\%first_courses, \%second_courses, \%third_courses);

course_check(\@course_list, 1, 110);
course_check(\@course_list, 2, 110);
course_check(\@course_list, 3, 320);

sub course_check{
	my $listref = $_[0];
	my @list = @$listref;
	my $year = $_[1]-1;
	my $number = $_[2];
	my $hashref = $list[$year];
	my %hash = %$hashref;
	if (exists $hash{$number}) {
		print $hash{$number},"\n";
	} else {
		print "Unknown course!\n";
	}
}