#!/usr/bin/env perl
use warnings;
use strict;

=pod
Three uses:

* Comparison:
if ($string =~ /foo/) { ... }

* Selection:
$string =~ /foo(.*)bar/;
my $between_foo_bar = $1;

* Replacement:
$string =~ s/foo/bar/;

=cut

# Find the literal characters 'red'�.
# Alternate charaters
# normal      - /red/
# weird       - mZredZ
# also common - m{red}

my $string = 'red riding hood';
if ( $string =~ /red/ ) {
  print "[$string] has 'red' in it!\n";
}

my @strings = ( qw{ barred redis tired }, 'caught red handed', 'red, purple, and blue shirt' );

my $re_string1 = 'red';
my $re_string2 = '\bred\b'; # \b assertion     - match a word boundary
my $re_string3 = '^red\b';  # ^  metacharacter - match the beginning of the line

my @re_strings = ( $re_string1, $re_string2, $re_string3 );

my $re;
for my $string ( @strings ) {
  print "[$string]\n";
  for my $re_string ( @re_strings ) {

    print "\t", $re_string, " matches ? ";
    $re = qr/$re_string/;

    if ( $string =~ $re ) {
      print "yes\n";
    }
    else {
      print "no\n";
    }
  }
}

=pod

String Selection
The title out of an HTML document.
Conceptually
* Find the literal characters '<title>'�.
* Followed by zero or more characters which will be captured and returned.
* Then ends with the literal characters '</title>'�.

What We’ll Need
* ( ) To capture and return the title.
* . To match any character (except newline).
* * To match zero or more times.
* \ To escape what would normally not be a literal character.
=cut

my $html = q{
<html>
  <head>
    <title>Example.com</title>
  </head>
  <body>
    Hello world!
  </body>
</html>
};

$re_string1 = '<title>';
$re_string2 = '<title>.';
$re_string3 = '<title>.*';
my $re_string4 = '<title>(.*)';
my $re_string5 = '<title>(.*)<\/title>';
my $re_string6 = 'm{<title>(.*)<\/title>}'; # don't need to escape the '/' using 'm'

@re_strings = ( $re_string1, $re_string2, $re_string3, $re_string4, $re_string5, $re_string6 );

print "$html\n";
for my $re_string ( @re_strings ) {
  print "\t", $re_string, " matches ? ";
  $re = qr/$re_string/;
  print "re[$re]\n";

  if ( $html =~ $re ) {
    print "yes\n";
  }
  else {
    print "no\n";
  }
}

$html =~ m{<title>(.*)</title>};
print "The title is $1\n";

if ( $html =~ m{<title>(.*)</title>} ) {
  print "yup\n";
}


=pod

String Replacement

Remove county name suffixes.
my $string =
'Los Angeles County
Harris County
Lafayette Parish';

Conceptually
* For each line.
* Match for a particular set of strings at the end of the line.
* Replace the match with an empty string.

What We'll Need
* $ Match the end of the line.
* | Alternation metacharacter.
* ( ) Group alternating patterns.
* m Treat string as multiple lines.
* g Modifier to do global matching.

=cut

$string =
'Los Angeles County
Harris County
Lafayette Parish';

$re_string1 = '(County|Parish)';
$re_string2 = ' (County|Parish)$';

@re_strings = ( $re_string1, $re_string2 );

$re;
my $re_m;
print "[$string]\n";
for my $re_string ( @re_strings ) {

  print "\t", $re_string, " matches ? ";
  $re   = qr/$re_string/;
  $re_m = qr/$re_string/m;

  if ( $string =~ $re ) {
    print "yes\n";
  }
  else {
    print "no\n";
  }

  if ( $string =~ /$re/g ) {
    print "yes (g)\n";
  }
  else {
    print "no (g)\n";
  }

  if ( $string =~ /$re_m/g ) {
    print "yes (mg)\n";
  }
  else {
    print "no (mg)\n";
  }
}

$string =~ s/ (County|Parish)$/ Foo/gm;
$string eq 'Los Angeles Harris Lafayette';

print "Now string is: [$string]\n";
print "\n\n";

=pod
Metacharacters
\ Quote the next metacharacter.
^ Match the beginning of the line.
. Match any character (except newline).
$ Match the end of the line.
| Alternation.
( ) Grouping.
[ ] Bracketed character class.Modifiers
• m Treat string as multiple lines. Affects “^”
and “$”.
• s Treat string as single line. Affects “.”.
• i Case-insensitive pattern matching.
• x Allow whitespace and comments.
• g Global matching (match more than once).
• ...

Quantifiers
• * Match 0 or more times
• + Match 1 or more times
• ? Match 1 or 0 times
• {n} Match exactly n times
• {n,} Match at least n times
• {n,m} Match at least n but not more than m times

Character Classes
• \w Match a "word" character (alphanumeric plus "_", plus
other connector punctuation chars plus Unicode marks).
• \W Match a non-“word” character.
\s Match a whitespace character.
\S Match a non-whitespace character.
\d Match a decimal digit character.
\D Match a non-digit character.
...Assertions
• \b Match a word boundary.
• \B Match except at a word boundary.
• \A Match only at beginning of string.
• \Z Match only at end of string, or before
newline at the end.
• \z Match only at end of string.
=cut

