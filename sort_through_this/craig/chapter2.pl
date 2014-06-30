#!/usr/bin/env perl

use warnings;
use strict;
#use diagnostics; # doesn't work on Luigi??
use Data::Dumper;

#I:\annsteam\craig\imtonline\ZeroToPerl\craig>t:\perl\bin\perl chapter2.pl
#couldn't find diagnostic data in C:\Perl\lib/pods/perldiag.pod t:/Perl/lib t:/Perl/site/lib . chapter2.pl at t:/Per
#l/lib/diagnostics.pm line 268, <POD_DIAG> line 646.
#Compilation failed in require at chapter2.pl line 5, <POD_DIAG> line 646.
#BEGIN failed--compilation aborted at chapter2.pl line 5, <POD_DIAG> line 646.

###############
### Scalars ###
###############

### Numbers ###

my $integer = 42;
my $float = 123.456;

my $decimal     = 255;
my $octal       = 0377;
my $hexadecimal = 0xff;
my $binary      = 0b11111111;

print "d: $decimal o: $octal h: $hexadecimal b: $binary\n\n";

my $million = 1_000_000;
print "Million: $million\n";



### Strings ###
print "\n";

my $string1 = "craig was here";
my $string2 = 'craig was here';
my $string3 = "[$string1] plus [$string2]";

my $string4 = qq{craig was here};
my $string5 = q{craig was here};
my $string6 = qq|[$string1] plus [$string2]|;

my $string7 = $string1 . $string5;

print "String1[$string1]\n";
print "String2[$string2]\n";
print "String3[$string3]\n";
print "\n\n";
print "String4[$string4]\n";
print "String5[$string5]\n";
print "String6[$string6]\n";
print "\n\n";
print "String7[$string7]\n";

print "\n\n";

my $string = q{
    Craig
    was
    here,
    too.
};

print "[$string]\n";

$string1 = 'A';
$string2 = $string1 x 5;

print "\n\n";
print "String1[$string1]\n";
print "String2[$string2]\n";

### Binary Operators ###

print "\n\n";
my $craig = -5;
print "$craig\n";

$craig = $craig + 5;
print "$craig\n";

$craig += 5;
print "$craig\n";

$craig = $craig + 1;
print "$craig\n";

$craig++;
print "$craig\n";

my $str = 'craig';
print "$str\n";

$str = $str . 'X';
print "$str\n";

$str .= 'Y';
print "$str\n";

### if ###
print "\n\n";

my $var1 = 1;
my $var2 = '2';

if ( $var1 < $var2 ) {
    print "$var1 is less than $var2\n";
}
else {
    print "$var1 is NOT less than $var2\n";
}

### while ###
print "\n\n";

### defined ###
print "\n\n";

my $some_var;
$some_var = 'something';
$some_var = undef;

if ( defined $some_var ) {
    print '$some_var is defined', "\n";
}
else {
    print '$some_var is NOT defined', "\n";
}


print "\n\n";

$some_var = 0;

if ( $some_var == 2 ) {
    print "WRONG\n";
}

exit;

if ( defined $some_var ) {
    print '$some_var is defined', "\n";
}


if ( $some_var ) {
    print '$some_var is TRUE', "\n";
}
else {
    print '$some_var is FALSE', "\n";
}


exit;







print 'The answer to Question 1 is ' . question_1() . "\n\n";
print 'The answer to Question 2 is ' . question_2() . "\n\n";
print 'The answer to Question 3 is ' . question_3() . "\n\n";
print 'The answer to Question 4 is ' . question_4() . "\n\n";
print 'The answer to Question 5 is ' . question_5() . "\n\n";



sub question_1 {

    my $PI      = 3.141592654;
    my $radius  = 12.5;
    my $circumference;

    $circumference = ( 2 * $PI ) * $radius;
    warn "what happened";

    return $circumference;
}

sub question_2 {

    my $PI      = 3.141592654;
    my $radius;
    my $circumference;

    print "Please enter a radius: ";
    my $line = <STDIN>;
    chomp($line);
    $radius = $line;

    $circumference = ( 2 * $PI ) * $radius;

    return $circumference;
}

sub question_3 {

    my $PI      = 3.141592654;
    my $radius;
    my $circumference;

    print "Please enter a radius: ";
    my $line = <STDIN>;
    chomp($line);
    $radius = $line;

    if ( $radius < 0 ) {
        $circumference = 0;
    }
    else {
        $circumference = ( 2 * $PI ) * $radius;
    }

    return $circumference;
}

sub question_4 {

    my $operand_1;
    my $operand_2;
    my $result;

    print "Please enter the first number: ";
    my $line = <STDIN>;
    chomp($line);
    $operand_1 = $line;

    print "Please enter the second number: ";
    $line = <STDIN>;
    chomp($line);
    $operand_2 = $line;

    $result = $operand_1 * $operand_2;

    return $result;
}

sub question_5 {

    my $the_string;
    my $the_number;
    my $result;

    print "Please enter the string: ";
    my $line = <STDIN>;
    chomp($line);
    $the_string = $line;

    print "Please enter the number: ";
    $line = <STDIN>;
    chomp($line);
    $the_number = $line;

    $result = $the_string x $the_number;

    return $result;
}
