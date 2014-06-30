#!/usr/bin/env perl

use warnings;
use strict;

print "Doing question 2\n";
question_2();
print "\n\n";

#print 'The answer to Question 2 is ' . question_2() . "\n\n";

sub question_2 {
    
    my $the_string;
    my $the_number;
    my $result;
    my @names = qw/ fred betty barney dino wilma pebbles bamm-bamm /;
    
    print "Please enter numbers between 1 and 7 (one per line) (Ctrl-Z to end):\n";
    my @lines = <STDIN>;
    chomp( @lines );

    print "Using these names: @names\n\n";
    foreach my $number ( @lines ) {
        print "Number $number corresponds to $names[$number - 1]\n";
    }
}