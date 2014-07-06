#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

# Hashes

my %hash_1 = ( 'key1', 'value1', 'key2', 'value2' );
%hash_1 = ( 'value2', 'key2', 'value1', 'key1' );

my %hash_2 = ( 'key1' => 'value1', 'key2' => 'value2' );

my %hash_3 = (
    key_1  =>  'value1',
    key_2  =>  'value2',
    'key_3'  =>  'value3',
    'key_4'  =>  'value4',
    'key_5'  =>  'value5',
);

my %hash_4 = (
    'ia st'   =>  undef,
    'ne st'   =>  'Nebraska',
);

print $hash_3{'key 3'}, "\n";

if ( exists $hash_4{'ia st'} ) {
    print "Value is: $hash_4{'ia st'} exists\n";
}
else {
    print "it doesn't exist\n";
}

my @stuff = keys %hash_3;
print Dumper(\%hash_3);
print Dumper(\%hash_3);
$hash_3{"key_6"} = 'value6';
print Dumper(\%hash_3);

my %hash_5 = reverse %hash_1;
my %hash_6 = reverse %hash_4;

print Dumper(\%hash_1, \%hash_4, \%hash_5, \%hash_6);

for my $key ( sort keys %hash_3 ) {
    print "$key -> $hash_3{$key}\n";
}

my $scalar = "this is a scalar";
my @array = qw( this is my array );

my %another_hash = %hash;

print_hash( \%hash_1 );
%hash_1 = ();
print_hash( \%hash_1 );
print_hash( \%hash_2 );
print_hash( \%hash_3 );
print_hash( \%hash_4 );
print_hash( \%hash_5 );

print_hash_keys( \%hash_1 );
print_hash_keys( \%hash_2 );
print_hash_keys( \%hash_3 );
print_hash_keys( \%hash_4 );
print_hash_keys( \%hash_5 );

my %hash = (
    'this' => 0,
    'hash' => 'mine',
    );

if ( exists $hash{'this'} ) {
    print "the hash key 'this' exists in the hash named 'hash'\n";
}
else {
    print "the hash key 'this' does not exist in the hash named 'hash'\n";
}

delete $hash{'this'};

if ( exists $hash{'this'} ) {
    print "the hash key 'this' exists in the hash named 'hash'\n";
}
else {
    print "the hash key 'this' does not exist in the hash named 'hash'\n";
}

print "PATH is $ENV{PATH}\n\n";
print "TEMP is $ENV{TEMP}\n\n";

print Dumper( \%ENV );


print "\n";
print_hash( \%hash );
print_hash( \%another_hash );

my %blah;

for my $num ( 1 .. 10 ) {
    $blah{$num} = 'craig was here';
}

my $test_val = delete $blah{4};
print "tv: $test_val\n";

print_all(\$scalar, \@array, \%hash);

my %stuff = (
    key1    =>  'data1',
    key2    =>  'data2',
);

my $one = 5;
my $two = 2;
my $three = 3;
my $four = 4;

my @stuff = ( 1, 2, 3, 4 );

( $one, $two ) = &_chomp( \@stuff );
print "one after sub 1: $one\n";
print "two after sub 1: $two\n";

