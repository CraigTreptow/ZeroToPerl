#!/usr/bin/env perl

use warnings;
use strict;

=pod
use Craig_was_here;

# ternary conditional operator
my $i = 2;
my $j = 2;
my $result = ($i + $j == 4) ? 'yup' : 'nope';

print "Result: $result\n\n";


# JOIN
# $result = join $glue, @pieces

my $some_string = join ':', (1..10);

print "$some_string\n\n";

my @values = split/:/, $some_string;

print "@values\n";
print @values, "\n";

=cut
# GREP
#grep { expression } @list
# if expression is true, then that one is kept


# odd numbers return true
my @odd_numbers = grep { $_ % 2 } 1..10;
print "@odd_numbers\n";

#MAP

my @numbers = ( 1..10 );

my @doubled = map { $_ * 2 } @numbers;

print "@numbers\n";
print "@doubled\n";


@numbers = ( 1, 1.1, 123456.789, 6.54687, 29.5, 1.5, 2, -1.1345, -2, -10.1 );
my @formatted_numbers = map { &big_money($_) } @numbers;

print "          numbers: @numbers\n";
print "formatted numbers: @formatted_numbers\n";


sub big_money {
  my $number = sprintf "%.2f", shift @_;
  # Add one comma each time through the do-nothing loop
  1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
  # Put the dollar sign in the right place
  $number =~ s/^(-?)/$1\$/;
  $number;
}
