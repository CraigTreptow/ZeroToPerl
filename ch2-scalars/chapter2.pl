#!/usr/bin/env perl

package Craig::Treptow;

use warnings;
use strict;

use Data::Dumper;
use CGI;

my $q = CGI->new;
print $q->header('text/html');
print $q->start_html(-title => 'Zero To Perl - Chapter 2 Scalar Data');
print $q->pre;

=pod

Stuff to cover:

* shebang
* use warnings
* use strict
* numbers
* strings
* quote-like operators
* heredocs
* interpolation
* concatenation
* x operator
* choosing good variable names
* chomp
* chop
* true & false
=cut


################
#### Scalars ###
################

my $this_is_craigs_preferred_it_is_called_snake_case;
my $thisIsCamelCase;


my $use = "Craig was here\n\n\n\n\nblah";

warn Dumper( $use );

#chomp($use);
#chomp($use);
chomp($use);

print $use;
print "after\n";
exit;

=pod

#### Numbers ###

my $integer     = 42;
my $float       = 123.456;
my $decimal     = 255;
my $octal       = 0377;
my $hexadecimal = 0xff;
my $binary      = 0b11111111;

print "i: $integer f: $float d: $decimal o: $octal h: $hexadecimal b: $binary\n\n";

my $million1 = 1_000_00;
my $million2 = 100000;
print "Million: $million1 $million2\n";

##### Strings ###
print "\n";

my $string1 = "\n\tcraig's\n\tgirls\n\twere\n\there\n";
my $string2 = 'craig\'s girls were here';
my $string3 = "$string1 plus [$string2]";

my $string4 = qq{
    craig's
    girls
    were
    here
};
my $string5 = q/craig's girls were here/;
my $string6 = qq|[$string1] plus [$string2]|;

my $string7 = $string1 . $string5;

my $string8 = <<'END';
Here's something
to read END
about.
END

my $string9 = <<"END";
Here's more to read
about:
[$string8] and
[$string3]
END

my $string10 = <<END;
So, what's the
default interpolation
when you don't
use any quotes?
[$string9]
END

print "String1[$string1]\n";
print "String2[$string2]\n";
print "String3[$string3]\n";
print "\n\n";
print "String4[$string4]\n";
print "String5[$string5]\n";
print "String6[$string6]\n";
print "\n\n";
print "String7[$string7]\n";
print "String8[$string8]\n";
print "\n\n";
print "String7[$string9]\n";
print "String8[$string10]\n";

print "\n\n";

my $string = q{
   Craig
   was
   here,
   too.
};

print "[$string]\n";

my $string1 = 'AB';
my $string2 = $string1 x 5;

print "\n\n";
print "String1[$string1]\n";
print "String2[$string2]\n";

#### Binary Operators ###

my $foo = 'craig';
$foo .= ' ';
$foo .= 'treptow';
print "$foo\n";

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

#### if ###
print "\n\n";

my $var1 = 0xff;
my $var2 = 255;

if ( $var1 == $var2 ) {
    print "$var1 equals $var2\n";
}
else {
    print "$var1 does not equal $var2\n";
}

#### while ###
print "\n\n";

### defined ###
print "\n\n";

my $some_var;
$some_var = 'something';
$some_var = undef;
$some_var = 'blah';

print length($some_var), "\n";

my $some_var2 = '';
if ( defined $some_var2 ) {
    print '$some_var2 is defined', "\n";
}
else {
    print '$some_var2 is NOT defined', "\n";
}

print "\n\n";

$some_var = 'A';

if ( $some_var == 2 ) {
    print "WRONG\n";
}


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
=cut

print $q->end_html;



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
