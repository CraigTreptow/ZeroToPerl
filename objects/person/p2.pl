#!/usr/bin/env perl

use warnings;
use strict;

use lib 'lib';

use Persun;

my $craig = Persun->new(
                            {
                                name        => 'Craig',
                                eye_color   => 'blue',
                                height      => 73,
                                weight      => 200,
                                hair_color  => 'brown',
                                gender      => 'M',
                            }
                        );

print $craig->get_name, "'s stats are:\n";
print "\t  Hair: ", $craig->get_hair_color, "\n";
print "\t  Eyes: ", $craig->get_eye_color, "\n";
print "\tHeight: ", $craig->get_height, " inches\n";
print "\tWeight: ", $craig->get_weight, " lbs\n";
print "\tGender: ", $craig->get_gender, "\n";

my $lisa = Persun->new(
                            {
                                name        => 'Lisa',
                                eye_color   => 'hazel',
                                height      => 60,
                                weight      => 100,
                                hair_color  => 'brown',
                                gender      => 'F',
                            }
                        );

print $lisa->get_name, "'s stats are:\n";
print "\t  Hair: ", $lisa->get_hair_color, "\n";
print "\t  Eyes: ", $lisa->get_eye_color, "\n";
print "\tHeight: ", $lisa->get_height, " inches\n";
print "\tWeight: ", $lisa->get_weight, " lbs\n";
print "\tGender: ", $lisa->get_gender, "\n";