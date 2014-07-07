#!/usr/bin/env perl

use warnings;
use strict;

use Person;

my $craig = Person->new(
                            {
                                eye_color   => 'blue',
                                height      => 63,
                                weight      => 200,
                            }
                        );

print "Craig's stats are:\n";
print "\t  Eyes: ", $craig->get_eye_color, "\n";
print "\tHeight: ", $craig->{height}, " inches\n";
print "\tWeight: ", $craig->{weight}, " lbs\n";
