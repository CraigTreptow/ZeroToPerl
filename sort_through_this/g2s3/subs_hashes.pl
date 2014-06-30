#!/usr/bin/env perl

use warnings;
use strict;

##my @forms = ( 'BO6013', 'BO6014',  'BO6015' );

##foreach my $form ( @forms ) {
##    print "My number is $_\n";
##}

#for ( my $i = 2; $i <= 10; $i++ ) {
#    print "My number is $i\n";
#}

##my $num = 23;

##for ( 2..11 ) {
##    print "My number is $num\n";
##}

#exit;


#my $number = 1;

#while ( $number <= 10 ) {
#    print "My number is $number\n";
#    #$number = $number + 3;
#}

#my $frob = frobnicate('B921394', 13543, 'BO6013');

print "frob: " . frobnicate('B921394', 13543, 'BO6013') . "\n";

sub frobnicate {

#    my ( $number1, $number2, $number3 ) = @_;

    my $number1 = shift;
    my $number2 = shift;
    my $number3 = shift;
    my $result;

	print "craig's numbers are: $number1 and $number2 and $number3\n";

	$result = $number3;

    return $result;

}






exit;

my %hash_1 = ( 'key1', 'value1', 'key2', 'value2' );

my %hash_2 = ( 'key1' => 'value1', 'key2' => 'value2' );

my %hash_3 = (
    'key_1'  =>  'value1',
    'key_2'  =>  'value2',
);

my %hash_4 = (
    ia   =>  'Iowa',
    ne    =>  'Nebraska',
);

my %hash_5 = reverse %hash_4;

my $scalar = "this is a scalar";
my @array = qw( this is my array );
my %hash = (
    'this' => 'my',
    'hash' => 'mine',);

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

print "PATH is $ENV{PATH}\n";
print "TEMP is $ENV{TEMP}\n";
exit;

print "\n";
print_hash( \%hash );
print_hash( \%another_hash );

exit;

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

    print "Hash:\n";

    for my $key ( keys %$hash_ref ) {
        print "$key -> $$hash_ref{$key}\n";
    }

#    while ( my ( $key, $value ) = each %$hash_ref ) {
#        print "$key -> $value\n";
#    }

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
