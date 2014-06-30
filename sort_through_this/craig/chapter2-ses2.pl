#!/usr/bin/env perl

use warnings;
use strict;

my $million_1 = 1000000;
my $million_2 = 1_000_000;
print "Million: $million_1\n";
print "Million: $million_2\n";

my $mccoy1 = 'he\'s dead Jim';
my $mccoy2 = "he's dead Jim";
my $mccoy3 = q{he's dead Jim - $mccoy1};
my $mccoy4 = qq{he's dead Jim - $mccoy2};

$mccoy1 = 'craig' . "$mccoy2" . 'treptow';
print "1: $mccoy1\n";
print "2: $mccoy2\n";
print "3: $mccoy3\n";
print "4: $mccoy4\n";

my $num = '0' * 60;

print "Num: $num\n";

my $this = 0b11111111;
my $that = 0xff;

print "this: $this\n";
print "that: $that\n";

if ( $this == $that ) {
	print "they are equal\n";
}
else {
 print "they are not equal\n";
 print "blah\n";
}

exit;

my $TRUE = 1;
my $FALSE = 0;

my $is_craig = $FALSE;
print "craig: [$is_craig]\n";

if ( $is_craig ) {
	print "true!\n";
}
else {
	print "false\n";
}

my @forms1 = ( "BP0498", 'BP0499', 'BP0500' );
my @forms2 = qw{ BP0498 BP0499 BP0500 };
my ($form1, $form2, $form3) = qw{ BP0498 BP0499 BP0500 };

print @forms2;
print "\n";
print reverse @forms2;

print "\n2:[$form2]\n";

my $fubar = 'abcdef';
print reverse $fubar . "\n";

my $stuff = q{ and here's the stuff! };
print "stuff[$stuff]\n";

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
