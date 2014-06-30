#!/usr/bin/env perl

use warnings;
use strict;

greet('Craig');
greet('Lisa');
greet('Mikaela');
greet('Macy');

# Limit the scope of the array to the sub
# by wrapping it in the block
# The variable must be defined before the sub
# so the sub can refer to it

BEGIN {
    my @names_seen_before;
    
    sub greet {
        my $name = shift;
        
        if ( !@names_seen_before ) {
            print "Hi $name! You are the first one here!\n";
        }
        else {
            print "Hi $name!  I've seen: @names_seen_before\n";
        }
        
        push @names_seen_before, $name;
    }
}
