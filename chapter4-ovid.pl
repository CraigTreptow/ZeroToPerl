#!/usr/bin/env perl

use warnings;
use strict;

#sub_this( $var2, $var1 );

#sub sub_this {
#    my ( $var1, $var2 ) = @_;
#}

my %args = (
	number_of_sides	=>	6,
	number_of_rolls	=>	4,
);

my $random_roll_1 = random_roll_1(
    {
        number_of_sides =>  6,
        number_of_rolls =>  4,
    }
);

my $random_roll_2 = random_roll_2(
    {
        number_of_sides =>  6,
        number_of_rolls =>  4,
    }
);


print "$random_roll_1\n";
print "$random_roll_2\n";

sub random_roll_1 {
    my ( $arg_for ) = @_;

    my $number_of_sides = $arg_for->{number_of_sides} || 6;
    my $number_of_rolls = $arg_for->{number_of_rolls} || 1;
    my $total = 0;

    for ( 1 .. $number_of_rolls ) {
        $total += ( 1 + int( rand( $number_of_sides ) ) );
    }

    return $total;
}

sub random_roll_2 {
    my $arg_for = shift;

    my $number_of_sides = $arg_for->{number_of_sides} || 6;
    my $number_of_rolls = $arg_for->{number_of_rolls} || 1;
    my $total = 0;

    for ( 1 .. $number_of_rolls ) {
        $total += ( 1 + int( rand( $number_of_sides ) ) );
    }

    return $total;
}
