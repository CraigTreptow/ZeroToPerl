#!/usr/bin/env perl
use warnings;
use strict;

# use diagnostics;
use Data::Dumper;
# https://metacpan.org/module/SMUELLER/Data-Dumper-2.121_20/Dumper.pm
$Data::Dumper::Terse        = 0;            # don't output names where feasible
# $Data::Dumper::Indent     = 0;            # turn off all pretty print
# $Data::Dumper::Indent     = 1;            # mild pretty print
#$Data::Dumper::Indent       = 2;            # default pretty print
$Data::Dumper::Indent     = 3;            # pretty print with array indices
$Data::Dumper::Useqq      = 1;            # print strings in double quotes
#$Data::Dumper::Pair       = " : ";        # specify hash key/value separator
#$Data::Dumper::Pad        = "Craig: ";    # specify a string that will prefix every line
$Data::Dumper::Sortkeys   =   1;

my %some_hash   =   (
    some_key        =>    'some value',
    another_key     =>    'another value',
    a_list          =>  [
                            {
                                deep_key            =>  'deep value',
                                another_deep_key    =>  'another deep value',
                                another_deeper_key  =>  'Blah blah    blah',
                            },
                            {
                                deep_key_2              =>  'What\'s up',
                                another_deep_key_2      =>  'another deep value 2',
                                another_deeper_key_2    =>  'What’s up',
                            },
                        ]
);

print "Dumper without using a refernce:\n\n";
print Dumper( %some_hash );

print "\n\n";

print "Dumper using a reference:\n\n";
# always pass a reference
print Dumper( \%some_hash );

print "\n\n";

warn "Here I am";
warn "And here I am again\n";

my $string = 'just another Perl hacker';

if ( $string =~ m/ust/ ) {
	print "It matched\n\n";
}
else {
	print "It no matched\n\n";
}
