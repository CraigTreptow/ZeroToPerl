#!/usr/bin/env perl

use warnings;
use strict;
use 5.010;

greet('Craig');
greet('Lisa');
greet('Mikaela');
greet('Macy');

sub greet {
    my $name = shift;
    state @names_seen_before;
    
    if ( !@names_seen_before ) {
        print "Hi $name! You are the first one here!\n";
    }
    else {
        print "Hi $name!  I've seen: @names_seen_before\n";
    }
    
    push @names_seen_before, $name;
}
