#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

# Object
# "An object is a data structure with behaviors attached to it"
#
# You don't tell an Object how to do something, you ask an Object to do something
#
# 3 rules
#
# 1. A class is a package.
# 2. An object is a reference that knows its class.
# 3. A method is a subroutine

# Class: a blueprint for something you want to create
# Instance: what you built based on a class

# See:
# lib/Shape.pm

use lib 'lib';
use Shape;
use Shape::Circle;

# create a new Shape object
my $red_shape = Shape->new(
	{
		color	=>	'red',
		length	=>	2,
		width	=>	2,
	}
);

# print the attributes using the hash ref directly
print $red_shape->{color}, "\n";
print $red_shape->{length}, "\n";
print $red_shape->{width}, "\n";


my $default_shape = Shape->new;

print 'Default color: ', $default_shape->{color} ;

print "\n\n";

# dynamically add an attribute into the object's hash reference

my $effervescence = length( $red_shape->{color} ) * 0.42;

$red_shape->{effervescence} = $effervescence;

print 'Red shape now has an effervescence: ', $red_shape->{effervescence}, "\n\n";

print Dumper( \$red_shape, \$default_shape );

print "\n\n";

# if you are accessing the hash directly, "you're doing it wrong"
# better to use methods

print 'The red shape has an area of: ', $red_shape->get_area, "\n";
print 'The default shape has an area of: ', $default_shape->get_area, "\n";

print "\n\n";

my $blue_shape = Shape->new(
	{
		color	=>	'red',

	}
);

$blue_shape->set_color('blue');

print $blue_shape->get_color, "\n\n";

print $red_shape->get_creation_date, "\n";

sleep(2);
my $circle = Shape::Circle->new;

# get creation_date - inherited method
print $circle->get_creation_date, "\n";

# try new Circle methods
print "\n";
print 'Radius: ', $circle->get_radius, "\n";
print 'Circumference: ', $circle->get_circumference, "\n";
print 'Area: ', $circle->get_area, "\n";
print 'Red Length: ', $red_shape->get_length, "\n";
print 'Circle Length: ', $circle->get_length, "\n";
