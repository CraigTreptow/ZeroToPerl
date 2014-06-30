#!/usr/bin/env perl

use warnings;
use strict;

my $radius;
print "What is the radius? ";
chomp($radius = <STDIN>);

my $pi = 3.141592654;
my $circumference;

$circumference = 2 * $radius * $pi;
print "The circumference of $radius is $circumference.\n";

