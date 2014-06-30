#!/usr/bin/env perl

use warnings;
use strict;

my @fred = 1..10;
my ($average, @above_average_numbers) = above_average(100, @fred);

print "The numbers in \@fred above the average of $average are: @above_average_numbers\n\n";


sub above_average {
    my @nums = @_;
    my @nums_above_average;
    
    my $average = average(@nums);
    
    foreach my $num ( @nums ) {
        if ( $num > $average ) {
            push @nums_above_average, $num;
        }
    }
    
    return $average, @nums_above_average;
}

sub average {
    my @nums = @_;
    my $total;
    my $count = scalar @nums;
    
    foreach my $num ( @nums ) {
        $total += $num;
    }
    
    return $total / $count;
}
