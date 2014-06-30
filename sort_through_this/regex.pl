#!/usr/bin/env perl

use warnings;
use strict;

# \ makes any metacharacter "not special" anymore - it is "escaped"
# . matches any single character except a newline
# * match preceding item 0 or more times
# + match preceding item 1 or more times
# () group parts of a pattern called a "capture group"

# Changing Text
# Convert to Upper case
# Convert to Lower case
# Convert to Proper Noun
# Remove .00 from $ values

# Matching Text
# Does string match?
# Case insensitive matching
# Anchors
# Named
# Quantifiers

# Operators
# Binding

# split
# tr
# join

# I want to change 1234.00 to 1234

my $money = '1234.00';

my $money1 = $money;
$money1 =~ s/\.00//;

my $money2 = $money + 0;

print " money: $money\n";
print "money1: $money1\n";
print "money2: $money2\n";

print "\n";


# I want to change a string to Title Case


my $string = q{tHiS aNd ThAt};

my $string1 = $string;
$string1 =~ s/[a-z]/A-Z/g;

my $string2 = $string;
$string2 =  tr/a-z/A-Z/;

my $string3 = uc($string);

my $string4 = ucfirst($string);

my $string5 = lc($string);

my $string6 = ucfirst($string5);

print " string: $string\n";
print " string1: $string1\n";
print " string2: $string2\n";
print " string3: $string3\n";
print " string4: $string4\n";
print " string5: $string5\n";
print " string6: $string6\n";

print "\n";

if ( $string =~ /^t$/ ) {
    print "it matches\n";
}
else {
    print "it doesn't match\n";
}
