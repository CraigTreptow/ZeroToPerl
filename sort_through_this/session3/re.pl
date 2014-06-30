#!/usr/bin/env perl

use warnings;
use strict;

#my $pattern = 'ya';
my $pattern = qr{ya};
my $string = 'BO6011';

print "Does '$string' match '$pattern' ?  ";

#if ( $string =~ /BO6013|BO6014|BO6015/ ) {
if ( $string =~ /BO601[3-5]/ ) {
    print "yup\n";
}
else {
    print "nope\n";
}

print "\n";

exit;

$string = 'craig was here and craig was here, too';

print "S1: $string\n";
my $s = $string;
$s =~ s/craig/deb/g;

print "S2: $string\n";
print "S: $s\n";

exit;

print "Does '$string' match '$pattern' ?  ";
if ( $string =~ $pattern ) {
    print "yup\n";
}
else {
    print "nope\n";
}

print "\n";

my $this = 'ThiS AND thaT';
$this =~ tr/A-Za-z/a-zA-Z/;
print "this is now: $this\n";

$this = uc($this);
print "this is now: $this\n";

$this = lc($this);
print "this is now: $this\n";

$this = ucfirst($this);
print "this is now: $this\n";
