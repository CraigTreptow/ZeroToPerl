#!/usr/bin/env perl

use warnings;
use strict;

use File::Basename qw( dirname );
use Cwd qw( abs_path );

use lib dirname(dirname abs_path $0) . '/Common';
use lib 'lib';

use IMT::Frob qw( frobnicate );

### Example test run ###
#I:\annsteam\craig\imtonline\ZeroToPerl\modules>t:\perl\bin\perl t\00-load.t
#ok 1 - use IMT::Frob;
#1..1

### Example test run using prove ###
#I:\annsteam\craig\imtonline\ZeroToPerl\modules>t:\perl\bin\prove
#t\00-load.t ... ok
#t\10-basic.t .. ok
#All tests successful.
#Files=2, Tests=5,  1 wallclock secs ( 0.06 usr +  0.02 sys =  0.08 CPU)
#Result: PASS

### Code Here ###

print 'Answer[', frobnicate( 'a' ), "]\n";
print 'Answer[', frobnicate( 'b' ), "]\n";
print 'Answer[', frobnicate( 'c' ), "]\n";
