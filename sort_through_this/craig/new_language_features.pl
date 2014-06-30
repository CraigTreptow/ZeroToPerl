#!/usr/bin/env perl

use v5.16;
use warnings;

my $something = 'craig';

given ( $something ) {
    when ( /^c/ )   { say "do something" }
    when ( /c$/ )   { say "do something else" }
    default         { say "do nothing" }
}

given ( $something ) {
    when ( $_ ~~ /^c/ ) { say "do something" }
    when ( $_ ~~ /c$/ ) { say "do something else" }
    default             { say "do nothing" }
}