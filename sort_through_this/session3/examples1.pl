#!/usr/bin/env perl

use warnings;
use strict;

my @array1 = qw( one two three );
my @array2 = ( "one\n", "two", "three\n" );

print "Before 1: @array1\n";
my $number_changed = chomp(@array1);
print "$number_changed newlines were removed from array 1: @array1\n";

print "\n\n";

print "Before 2: @array2\n";
$number_changed = chomp(@array2);
print "$number_changed newlines were removed from array 2: @array2\n";

my $var = 2;
my $str = 'that';
demo_sub( 1, $var, 'this', $str );

sub demo_sub {
    my ( $num1, $num2, $string1, $string2 ) = @_;

    print "Demo num2: $num2\n";
    print "Demo str2: $string2\n";
    $_[0] = 99; # this was not a variable outside the sub, so it can't be modified
    $_[1] = 98;
    #$_[2] = "foo";
    $_[3] = "bar";
    ( $num1, $num2, $string1, $string2 ) = @_;
    print "Demo num2: $num2\n";
    print "Demo str2: $string2\n";
}

