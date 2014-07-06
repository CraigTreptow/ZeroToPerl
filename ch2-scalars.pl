#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

=pod

Stuff to cover:
* shebang
* use warnings, strict, Data::Dumper (Data::Printer one day)
* scalars
* numbers
* strings
* quote-like operators
* heredocs
* interpolation
* concatenation
* x operator
* chomp
* chop
* true & false
* choosing good variable names
=cut

#### Scalars ###
# a single thing
my $string = 'something';
my $number = 42;
my $reference = \$string;
print "\n\n";

#### Numbers ###
my $integer     = 42;
my $float       = 123.456;
my $decimal     = 255;
my $octal       = 0377;
my $hexadecimal = 0xff;
my $binary      = 0b11111111;

print "i: $integer f: $float d: $decimal o: $octal h: $hexadecimal b: $binary\n\n";

my $million1 = 1_000_000; #readability
my $million2 = 100000;
print "Million: $million1 $million2\n";
print "\n\n";

##### Strings ###
my $string1 = "\n\tcraig's\n\tgirls\n\twere\n\there\n";
my $string1a = '\n\tcraig's\n\tgirls\n\twere\n\there\n';
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

print "String  1 [$string1]\n";
print "String 1a [$string1a]\n";
print "String  2 [$string2]\n";
print "String  3 [$string3]\n";
print "\n\n";
print "String  4 [$string4]\n";
print "String  5 [$string5]\n";
print "String  6 [$string6]\n";
print "\n\n";
print "String  7 [$string7]\n";
print "String  8 [$string8]\n";
print "\n\n";
print "String  9 [$string9]\n";
print "String 10 [$string10]\n";
print "\n\n";

my $ab_string = 'AB';
my $longer_string = $ab_string x 5;

print "String1[$ab_string]\n";
print "String2[$longer_string]\n";
print "\n\n";

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

my $this_is_the_preferred_style;
my $it_is_called_snake_case;
my $thisIsCamelCase;
my $camelCaseIsHarderToRead;

