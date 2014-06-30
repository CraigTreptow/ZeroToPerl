#!/usr/bin/env perl
use warnings;
use strict;

my $input           = $ARGV[0];
my $cliche_answer   = _is_cliche( $input ) ? 'Yes' : 'No';

print "\nIs $input cliche? $cliche_answer\n";

sub _is_cliche {
    return 1;
}