#!/usr/bin/env perl

use warnings;
use strict;

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);

print "The total of \@fred is $fred_total.\n\n";

sub total {
    
    my @nums = @_;
    my $total;
    
    foreach my $num ( @nums ) {
        $total += $num;
    }
    
    return $total;
}
