#!/usr/bin/env perl

use warnings;
use strict;

use lib 'lib';

use Person;
use Person::Minor;

my $craig = Person->new(
                            {
                                name        => 'Craig',
                                eye_color   => 'blue',
                                height      => 73,
                                weight      => 200,
                                hair_color  => 'brown',
                                gender      => 'M',
                            }
                        );

$craig->set_name('bub');

print $craig->get_name, "'s stats are:\n";
print "\t  Hair: ", $craig->get_hair_color, "\n";
print "\t  Eyes: ", $craig->get_eye_color, "\n";
print "\tHeight: ", $craig->get_height, " inches\n";
print "\tWeight: ", $craig->get_weight, " lbs\n";
print "\tGender: ", $craig->get_gender, "\n";
print "\n";


my $lisa = Person->new(
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
#print "\t Grade: ", $lisa->get_grade, "\n";
print "\n";


my $mikaela = Person::Minor->new(
                            {
                                name        => 'Mikaela',
                                eye_color   => 'hazel',
                                height      => 48,
                                weight      => 50,
                                hair_color  => 'brown',
                                gender      => 'F',
                                grade       => '1st',
                            }
                        );

print $mikaela->get_name, "'s stats are:\n";
print "\t  Hair: ", $mikaela->get_hair_color, "\n";
print "\t  Eyes: ", $mikaela->get_eye_color, "\n";
print "\tHeight: ", $mikaela->get_height, " inches\n";
print "\tWeight: ", $mikaela->get_weight, " lbs\n";
print "\tGender: ", $mikaela->get_gender, "\n";
print "\t Grade: ", $mikaela->get_grade, "\n";
print "\n";
