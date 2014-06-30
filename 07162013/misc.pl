#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

## Question from last time
## Q: Can the range operator ( .. ) count by something other than 1?
## A: No
## Example: count by 5

## Option: 'C style for loop'
for ( my $i = 5; $i <= 30; $i += 5 ) {
	print "$i ";
}

print "\n";

## Option: 'map'
my @numbers = map { 5 * $_ } 1 .. 6;
print "@numbers";

print "\n";

## 'List::Gen' module
## Not currently installed

# my $by_fives = <5 .. 30 by 5>;
# print while <$by_fives>;

print "\n\n";

## wantarray
## returns undef if you don't use the return value
## returns 0 if you use it in scalar context
## returns 1 if you use it in list context

# usually used for returning a reference in scalar context

{
	no warnings;

	how_i_was_called();
	my $foo1            = how_i_was_called();
	my ( $foo2 )        = how_i_was_called();
	my @bar             = how_i_was_called();
	my ( $this, $that ) = how_i_was_called();
	my %corned_beef     = how_i_was_called();
}

sub how_i_was_called {
    if ( not defined wantarray ) {
        # no return value expected
        print "I was called in void context\n";
    }
    elsif ( not wantarray ) {
        # one return value expected
        print "I was called in scalar context\n";
    }
    else {
        # a list is expected
        print "I was called in list context\n";
    }
}

print "\n\n";


# Passing params to sub routines

# one param is easy

greet( 'Craig' );


sub greet {
	my $person = shift;
	print "Hello $person!!\n";
}

# two params aren't bad

greet2( 'Mikaela', 'Macy' );
greet2( qw( Mikaela Macy ) );

sub greet2 {
	my ( $person1, $person2 ) = @_;
	print "Hello $person1 and $person2!!\n";
}

print "\n\n";

# 3+ params can be confusing
# better to name them via an anonymous hash

do_things(
   {
       last_name    =>  'treptow',
       first_name   =>  'craig',
       'arg3'		,	'argument3',
   }
);

my %params =    (
       last_name    =>  'treptow',
       first_name   =>  'craig',
   );

$params{foo} = 'mike';

# die Dumper(\%params);


&do_things( \%params );

sub do_things {
    my ($arg_for) = @_;

    my $first_name  = $arg_for->{first_name};
    my $last_name   = $arg_for->{last_name};
    my $arg3        = $arg_for->{arg3} || 'default';

    print "do_things First Name: $first_name\n";
    print "do_things  Last Name: $last_name\n";
    print "do_things       arg3: $arg3\n";
}

print "\n\n";

# another example using named parameters

# was that a 6 side die with 8 rolls, or an 8 sided die with 6 rolls?
print unclear_random_die_roll( 6, 8 );

sub unclear_random_die_roll {
	my $number_of_sides = shift || 6;
	my $number_of_rolls = shift || 1;
	my $total = 0;

	for ( 1 .. $number_of_rolls ) {
		$total += ( 1 + int( rand($number_of_sides) ) );
	}

	return $total;
}

print "\n";


# we know for sure that the die is 6 sided and we want 8 rolls

print random_die_roll(
	{
		number_of_sides	=>	6,
		number_of_rolls	=>	8,
	}
);

sub random_die_roll {
	my ( $arg_for )	=	@_;

	# assign useful defaults
	my $number_of_sides	=	$arg_for->{number_of_sides} || 6;
	my $number_of_rolls	=	$arg_for->{number_of_rolls} || 1;
	my $total = 0;

	for ( 1 .. $number_of_rolls ) {
		$total += ( 1 + int( rand($number_of_sides) ) );
	}

	return $total;
}
