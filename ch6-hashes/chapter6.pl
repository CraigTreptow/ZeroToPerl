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

#print $hash_3{'key 3'}, "\n";

#if ( exists $hash_4{'ia st'} ) {
#    print "Value is: $hash_4{'ia st'} exists\n";
#}
#else {
#    print "it doesn't exist\n";
#}

#my @stuff = keys %hash_3;
#print Dumper(\%hash_3);
#print Dumper(\%hash_3);
#$hash_3{"key_6"} = 'value6';
#print Dumper(\%hash_3);

#my %hash_5 = reverse %hash_1;
#my %hash_6 = reverse %hash_4;

#print Dumper(\%hash_1, \%hash_4, \%hash_5, \%hash_6);

#for my $key ( sort keys %hash_3 ) {
#    print "$key -> $hash_3{$key}\n";
#}

#my $scalar = "this is a scalar";
#my @array = qw( this is my array );


#my %another_hash = %hash;


#print_hash( \%hash_1 );
#%hash_1 = ();
#print_hash( \%hash_1 );
#print_hash( \%hash_2 );
#print_hash( \%hash_3 );
#print_hash( \%hash_4 );
#print_hash( \%hash_5 );

#print_hash_keys( \%hash_1 );
#print_hash_keys( \%hash_2 );
#print_hash_keys( \%hash_3 );
#print_hash_keys( \%hash_4 );
#print_hash_keys( \%hash_5 );


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

#use Data::Dumper;

print Dumper( \%ENV );

exit;

print "\n";
print_hash( \%hash );
#print_hash( \%another_hash );

exit;

my %blah;

for my $num ( 1 .. 10 ) {
    $blah{$num} = 'craig was here';
}

my $test_val = delete $blah{4};
print "tv: $test_val\n";

#print_all(\$scalar, \@array, \%hash);

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
#print "one after sub 1: $one\n";
#print "two after sub 1: $two\n";

#do_it_2( \%stuff );

my $this = 'this';

frobnicate( $this );

print "this[$this]\n";


##############################################################################################################

#sub frobnicate {
#    $_[0] = 'frobnicate';
#}

sub _chomp {

    my $numbers_ref = shift;
    my @numbers = @$numbers_ref;

    print "first number of array is: $numbers[0]\n";
    print "second number of array is: $numbers[1]\n";

#    my ( $first, $second, $third, $fourth ) = @_;

#    $first++;

#    my $foo = 1;

#    return $first, $fourth;
        return \@numbers;
}

sub do_it_2 {
#    my $params_ref = shift;
#    my %params = %$params_ref;
        my %params = shift;

        print "do_it_2 value for key1 is: $params{key1}\n";

}

sub print_hash {
    my $hash_ref = shift;

    print "\nHash:\n";

    for my $key ( keys %$hash_ref ) {
        print "$key -> $$hash_ref{ $key }\n";
    }

    print "\nValues:\n";

    for my $value ( values %$hash_ref ) {
        print "$value\n";
    }

    print "\n\nAlternate Method\n\n";

    while ( my ( $key, $value ) = each %$hash_ref ) {
        print "$key -> $value\n";
    }

    print "\n";
}

sub print_hash_keys {
    my $hash_ref = shift;

    print "Hash keys:\n";

    for my $key ( keys %$hash_ref ) {
        print "$key\n";
    }

    print "\n";
}

sub print_all {
    my $scalar_ref = shift;
    my $arr_ref = shift;
    my $hash_ref = shift;

    print "Scalar: ", $$scalar_ref, "\n";
    print "Array: ", join ' ', @$arr_ref, "\n";
    print "Hash:\n ";
        while ( my ( $key, $value ) = each %$hash_ref ) {
        print "$key => $value\n";
    }
}
