#!/usr/bin/env perl

use warnings;
use strict;

print "Doing question 3\n";
question_3();
print "\n\n";

#print 'The answer to Question 2 is ' . question_2() . "\n\n";

sub question_3 {
    
    my $the_string;
    my $the_number;
    my $result;
    my @names = qw/ fred betty barney dino wilma pebbles bamm-bamm /;
    
    print "Please enter some strings (one per line) (Ctrl-Z to end):\n";
    my @lines = <STDIN>;
    chomp( @lines );

    print "\nThe strings printed in code point order are: \n\n";
    
    my @chars;
    my $size;
    my $some_char;
    
    foreach my $string ( sort @lines ) {
        @chars = ( $string =~ m/./g );
                
        print "$string\t\tcode points [";
            
        while( @chars ) {
            $size = scalar @chars;
            $some_char = shift @chars;
            if ( $size > 1 ) {
                print ord($some_char) . ' ';
            }
            else {
                print ord ($some_char);
            }
        }
        print "]\n";
    }
}