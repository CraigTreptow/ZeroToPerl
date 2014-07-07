#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;


###
use Storable qw(lock_store lock_retrieve freeze thaw);

# use Storable qw(lock_store);
#         lock_store($self->session(),'d:/sessions/wcom/'.$sessionID);

#         use Storable qw(lock_retrieve);
#         $self->{_session} = lock_retrieve('d:/sessions/wcom/'.$sessionID);
###

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
use IMT::Shape;
use IMT::Shape::Circle;

# create a new Shape object
my $red_shape = IMT::Shape->new(
	{
		color	=>	'red',
		length	=>	2,
		width	=>	2,
	}
);

# print the attributes using the hash ref directly
print "Attributes of red_object:\n\n";
print $red_shape->{color}, "\n";
print $red_shape->{length}, "\n";
print $red_shape->{width}, "\n";

my $default_shape = IMT::Shape->new;

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


my $blue_shape = IMT::Shape->new(
	{
		color	=>	'red',

	}
);

$blue_shape->set_color('blue');

print $blue_shape->get_color, "\n\n";

print $red_shape->get_creation_date, "\n";


sleep(2);
my $circle = IMT::Shape::Circle->new;

# get creation_date - inherited method
print $circle->get_creation_date, "\n";

# try new Circle methods
print "\n";
print 'Radius: ', $circle->get_radius, "\n";
print 'Circumference: ', $circle->get_circumference, "\n";
print 'Area: ', $circle->get_area, "\n";
print 'Red Length: ', $red_shape->get_length, "\n";
print 'Circle Length: ', $circle->get_length, "\n";
print 'Circle Color: ', $circle->get_color, "\n\n";

###

print "\n\n\n\nTESTING HERE\n\n";

print "Attributes of circle:\n\n";
print $circle->get_color, "\n";
print $circle->get_circumference, "\n";
print $circle->get_creation_date, "\n";
print "\n\n";

my $serialized = freeze($circle);
my $restored = thaw($serialized);

print "Dumping circle object that has been frozen and thawed:\n\n";
print Dumper($restored);
print "\n\n";
print "Attributes of circle after freeze/thaw cycle:\n\n";
print $restored->get_color, "\n";
print $restored->get_circumference, "\n";
print $restored->get_creation_date, "\n";
print "\n\n";

lock_store( $circle, 'saved_object' );
my $circle2 = lock_retrieve( 'saved_object' );

print "Dumping circle2 object that has been stored and retreived:\n\n";
print Dumper($circle2);

print "\n\nAttributes of circle2 after lock_store/lock_retrieve cycle:\n\n";
print $circle2->get_color, "\n";
print $circle2->get_circumference, "\n";
print $circle2->get_creation_date, "\n";

use Data::Dumper;
# OO usage
my $d = Data::Dumper->new([$circle]);
$d->Purity(1)->Terse(1)->Deepcopy(1);
my $r = $d->Dump;
my $restored2 = eval $r;

print "\n\n";
print "Printing circle object that has been dumped:\n\n";
print Dumper($r);
print "\n\n";
print "Dumping circle object that has been dumped:\n\n";
print Dumper($restored2);
print "\n\n";
print "Attributes of circle after Dump/eval:\n\n";
print $restored2->get_color, "\n";
print $restored2->get_circumference, "\n";
print $restored2->get_creation_date, "\n";
###

exit;
