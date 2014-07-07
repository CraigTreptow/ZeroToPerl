#!/usr/bin/env perl

use warnings;
use strict;

use Benchmark qw(:all);

print "\n";

timethese (
    $ARGV[0] || 1_000_000,
    {
        'sorted' => q{
            my @numbers = sort ( 3, 5, 3 );
            my $answer = $numbers[0];
        },

        'not sorted'    => q{
            my ($x, $y, $z) = ( 3, 5, 3 );
            my $answer;

            if ( $x < $y and $x < $z ) {
                $answer = $x;
            }
            elsif ( $y < $z and $y < $x ) {
                $answer = $y;
            }
            else {
                $answer = $z;
            }
        },
    }
);

print "\n";

#cmpthese (
#    1,
#    {
#        'precompiled'       => q{
#            my $name = '00';
#            my $something;
#            my $regex = qr{\b$name\b};
#            foreach ( 1..$ARGV[0] ) {
#                $something =~ /$regex/;
#            }
#        },

#        'not precompiled'   => q{
#            my $name = '00';
#            my $something;
#            foreach ( 1..$ARGV[0] ) {
#                $something =~ /\b$name\b/;
#            }
#        },
#    }
#);
