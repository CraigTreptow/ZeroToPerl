#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'SuperDuper' ) || print "Bail out!\n";
}

diag( "Testing SuperDuper $SuperDuper::VERSION, Perl $], $^X" );
