#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

# Regular Expressions

# Simple matching

$_ = 'yabba yabba do';

if ( $_ =~ /abba/ ) {
    print "$_ matched 'abba'\n";
}
else {
    print "$_ didn't match\n";
}

my $string = ' ';

if ( $string =~ /^$/ ) {
    print "[ $string ] matched'\n";
}
else {
	print "[ $string ] didn't match\n";
}

=pod
# meta characters
^  beginning of line
$  end of line
\  removes any 'special meaning' to the character immediately following
.  matches any single character except newline
\n new line
\r carriage return
\t tab
*  match previous 'thing' zero or more times
+  match previous 'thing' one or more times
?  zero or one of the previous 'thing'
() group parts of a pattern
|  "or"
{} count of previous 'thing'

# character classes
[] list of possible characters inside square brackets
[a-z]
[A-Z]

# character class shortcuts
\d digit
\w perl identifier or "word" matches [a-zA-Z0-9_]
\s "white space" form-feed, tab, newline, carriage return, space [\f\t\n\r ]
\D ^\d non-digit
\W ^\w non-word
\S ^\s non-whitespace
=cut
