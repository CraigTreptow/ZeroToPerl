#!/usr/bin/env perl

use warnings;
use strict;

print "Doing question 1\n";
question_1();
print "\n\n";

#print 'The answer to Question 2 is ' . question_2() . "\n\n";

sub question_1 {
    
    my $the_string;
    my $the_number;
    my $result;
    
    print "Please enter the strings (one per line) (Ctrl-Z to end):\n";
    my @lines = <STDIN>;
    chomp( @lines );

    @lines = reverse @lines;
    
    print "Those lines in reverse order are:\n\n";

    foreach my $line ( @lines ) {
        print "$line\n";
    }
}