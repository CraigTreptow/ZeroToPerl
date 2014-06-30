#!/usr/bin/env perl

use warnings;
use strict;

my $something = 'something';

print "something is $something\n";
print "\n";

{
    my $something = 'nothing';

    print "something is $something\n";
    print "\n";
}

print "something is $something\n";
print "\n";

print "\n";

do_something( \@rows );

my $what_up = 'whazzzzupppp';

sub do_something {
    my $something_else = 'something else';
    print "inside sub, something is $something\n";
    print "inside sub, something_else is $something_else\n";
    print "inside sub, what_up is $what_up\n";
}



