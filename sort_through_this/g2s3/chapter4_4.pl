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
    state $last_name_seen = undef;
    
    if ( !defined $last_name_seen ) {
        print "Hi $name! You are the first one here!\n";
    }
    else {
        print "Hi $name!  $last_name_seen is also here!\n";
    }
    
    $last_name_seen = $name;
}
