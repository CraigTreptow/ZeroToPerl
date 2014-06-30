#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

# Regular Expression matching

# Simple matching

my $string = q{yabba dabbba dosteak};
my $expression = qr{a(b){3,}a do\s?steak};

if ( $string =~ $expression ) {
    print "Matched\n\n$string\n$expression\n";
}
else {
    print "Did NOT match\n\n$string\n$expression\n";
}

=pod
# match modifiers added to the end of the RE
i  case insensitive
s  match any character including newline (used in conjunction with .)
x  allows arbitrary whitespace in a patter to make them easier to read
\A anchor pattern to the beginning of the string
\z anchor pattern to the end of the string
\Z anchor pattern to the end of the string with optional newline at the end
# recommend using \A and \z

# binding operator
=~
=cut