#!/usr/bin/env perl

use warnings;
use strict;

use lib 'lib';

use Backpack;
use Items;

my $bag = Backpack->new(color => 'red');

print "The bag is a ", $bag->color, ' ', $bag->name, '.', "\n";

$bag->add_items(
    Candle->new,
    Spellbook->new,
    Sandwich->new,
);

print "It weighs ", $bag->weight, "kg.\n";
print "Contents:";
print "  ", $_->name, " (weight: ", $_->weight, "kg)\n"
    for($bag->contents);
