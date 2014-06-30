#!/usr/bin/env perl

use warnings;
use strict;

use Benchmark qw(:all);

use Scalar::Util qw(looks_like_number);

print "\n";

#timethese (
cmpthese (
    $ARGV[0] || 1_000_000,
    {
        'RegEx' => q{
            my @exprs = qw(1 5.25 0.001 1.3e8 foo bar 1dd);
            for my $expression ( @exprs ) {
                if ( $xpression =~ m/^\d+$/ ) {
                    #print "$expression is", $expression =~ m/^\d+$/ ? '' : ' not', " a number\n";
                    sleep 1;
                }
            }
        },

        'looks_like_number'    => q{
            my @exprs = qw(1 5.25 0.001 1.3e8 foo bar 1dd);
            for my $expression ( @exprs ) {
                if ( looks_like_number( $expression ) ) {
                    #print "$expression is", looks_like_number($expression) ? '' : ' not', " a number\n";
                    sleep 1;
                }
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
