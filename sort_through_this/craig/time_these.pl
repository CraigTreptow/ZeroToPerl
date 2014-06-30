#!/usr/bin/env perl

use warnings;
use strict;

use Benchmark qw(:all);

print "\n";

cmpthese (
    $ARGV[0] || 1_000_000,
    {
        'one' => q{
            my $craig = 1;
            if ( $craig == 1 ) {
            }
        },

        'two'    => q{
            my $craig = 1;
            if ( $craig ) {
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
