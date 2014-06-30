#!/usr/bin/env perl

use warnings;
use strict;

my %hash1 = (
    a   =>  "aye",
    b   =>  "bee",
    c   =>  "see",
    d   =>  "dee",
    e   =>  "eee",
);


print keys %hash1;
print "\n";

#my @keys = keys %hash1;
#for my $key (sort @keys) {
for my $key (reverse sort keys %hash1) {
    print "$key has value $hash1{$key}\n";
}
print "\n";


my @names = qw( Craig Duane Joyce Mike Todd );
print "\@names: @names\n";

my @removed = splice @names, 2; # remove Joyce and all that follow
                                # @removed is qw(Joyce Mike Todd)
                                # @names is qw(Craig Duane)

print "\@names: @names\n";
print "\@removed: @removed\n";
print "\n";

@names = qw( Craig Duane Joyce Mike Todd );
print "\@names: @names\n";

@removed = splice @names, 2, 2; # remove Joyce and all that follow
                                   # @removed is qw(Joyce Mike Todd)
                                   # @names is qw(Craig Duane)
print "\@names: @names\n";
print "\@removed: @removed\n";
print "\n";
