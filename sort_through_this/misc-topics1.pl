#!/usr/bin/env perl

use warnings;
use strict;

use Data::Dumper;

print "\n\n";
### conditional operator ( ternary ) ###

# if the argument before the ? is true, the argument before the : is returned, otherwise
# the argument after the : is returned
my $smarter = q{smarter than the average bear};
my $not_smarter = q{not smarter than the average bear};

my $yogi = 'the bear';

my $saying = $yogi ? $smarter : $not_smarter;

print "yogi is $saying\n";

print "\n\n";
### printf/sprintf ###

my $number1 = 12345678.9;
my $number2 = -45.36784;
my $string1 = q{some string};

printf "The string is: %s \n", $string1;
printf "The number is: %s \n", $number1;
printf "The number is: %6d \n", $number2;      # decimal number with leading zeros
printf "The number is: %10f \n", $number2;      # floating-point number with leading zeros
printf "The number is: %10.3f \n", $number2;    # floating-point number with leading zeros, rounded
printf "The number is: %.2f \n", $number1;      # floating-point fixed decimal
printf "The number is: %.2e \n", $number1;      # floating-point scientific
printf "Number1: %s\nNumber2: %25.3f \n", $number1, $number2;

print "\n";

print "Using printf()\n";
printf "<% d>\n",  12;   # prints "< 12>"
printf "<%+d>\n",  12;   # prints "<+12>"
printf "<%6s>\n",  12;   # prints "<    12>"
printf "<%-6s>\n", 12;   # prints "<12    >"
printf "<%06s>\n", 12;   # prints "<000012>"

print "\nNow using sprintf()\n";
$string1 = sprintf "<% d>\n",  12;   # prints "< 12>"
print "$string1";
$string1 = sprintf "<%+d>\n",  12;   # prints "<+12>"
print "$string1";
$string1 = sprintf "<%6s>\n",  12;   # prints "<    12>"
print "$string1";
$string1 = sprintf "<%-6s>\n", 12;   # prints "<12    >"
print "$string1";
$string1 = sprintf "<%06s>\n", 12;   # prints "<000012>"
print "$string1";

### grep ###

my @odd_numbers;
for ( 1..10 ) {
    push @odd_numbers, $_ if $_ %2;
}
print "odd numbers: @odd_numbers\n";

@odd_numbers = ();
@odd_numbers = grep { $_ % 2 } 1..10;
print "odd numbers: @odd_numbers\n";

my @words = qw(fred fred craig fred jim bob craig fred );
my @freds = grep /fred/, @words;
print "freds: @freds\n";

my $fred_count = grep /fred/, @words;
print "Number of freds found: $fred_count\n";


### sort arrays ###
my @numbers = (14, 3, 12, 2, 23);

#compared as strings
my @sorted_numbers = sort @numbers;
print Dumper \@sorted_numbers;

#compared as numbers
@sorted_numbers = ();
@sorted_numbers = sort by_number1 @numbers;
print Dumper \@sorted_numbers;

### spaceship operator
### numbers <=>
### strings cmp

### perl already creates $a and $b for us

### if $a before $b, return -1
### if $a after $b, return 1
### if it doesn't matter, return 0

sub by_number1 {
    my $result;
    
    if ($a < $b ) {
        $result = -1;
    }
    elsif ( $a > $b) {
        $result = 1;
    }
    else {
        $result = 0;
    }
    
    return $result;
}

sub by_number2 {
    my $result = $a <=> $b;
       
    return $result;
}


@words = qw{fred craig Fanny Mae ABBA yabba Dabba};

# sort by ASCII value
my @sorted_words = sort @words;
print Dumper \@sorted_words;

# sort alphabetically
@sorted_words = ();
@sorted_words = sort { lc($a) cmp lc($b) } @words;
print Dumper \@sorted_words;

# sort alphabetically
@sorted_words = ();
@sorted_words = sort alphabetically @words;
print Dumper \@sorted_words;

sub alphabetically {
    my $result = lc($a) cmp lc($b);
    
    return $result;
}
