#!/usr/bin/env perl

use strict;
use warnings;

LOOP1: for my $num1 ( 1 .. 10 ) {
    LOOP2: for my $num2 ( 1 .. 10 ) {
        LOOP3: for my $num3 ( 1 .. 10 ) {

            if ( $num1 == 2 ) {
                last LOOP1;
            }

            if ( $num2 == 7 ) {
                last LOOP2;
            }

            if ( $num2 % 2 == 0 ) {
                next LOOP2;
            }


            print "$num1 - $num2 - $num3\n";
        }
    }
}

