#!perl
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

use IMT::Secrets qw( enkode );

ok( enkode('a') == 97, 'a == 97');
ok( enkode('Q') == 81, 'Q == 81');
ok( !defined( enkode(',') ), ', == undefined');
ok( !defined( enkode('-') ), '- == undefined');

#is(Some::Module::some_sub('c'), 99, 'c == 99');

done_testing();
