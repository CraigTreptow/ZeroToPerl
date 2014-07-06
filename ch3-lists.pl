#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

################
#### Lists   ###
################

my @list1 = ( 1, 2, 3, 4 );
my @list2 = ( 1, 2, 3, 4, );        # trailing comma is ignored
my @list3 = ( 1..4 );               # range operator
my @list4 = ( 1, 2..5, 6, 7..10 );  # can combine them
my @list5 = ( 10..0 );              # must count 'uphill' smaller to larger
my @list6 = ( -1..-10 );
my @list7 = ( -10..-1 );
my @list8 = ( 1, 'two', "three", 4..10 );
my @list9 = ( 'a', 'b', 'c', 'd', 'e', 'f', 'g' );
my @list10 = qw( a       b c d e f g ' ' j );       # "quoted words" - same as above, but less typing, cleaner to read
my @list11 = qw( craig "\t" was here "\n" );   # qw() treats strings as a single-quoted string
push @list11, "\n";
my @list12 = qw! delimiters can be the same !;
my @list13 = qw[ or left and right ];
my ( $one, $two, $three ) = qw{ craig was };

print "One: $one Two: $two Three: $three\n";
print Dumper($one, $two, $three);
my @craigs_list = reverse( sort( qw(1 7 5 3 -10 ) ) );
print "$craigs_list[0] + $craigs_list[1] ", $craigs_list[0] + $craigs_list[1];

print " List1: @list1\n";
print " List2: @list2\n";
print " List3: @list3\n";
print " List4: @list4\n";
print " List5: @list5\n";
print " List6: @list6\n";
print " List7: @list7\n";
print " Craig: @craigs_list\n";

print " List8: @list8\n";
print " List9: @list9\n";
print "List10: @list10\n";

print "List11: ", @list11;

print "List12: @list12\n";
print "List13: @list13\n";
print "   One: $one\n";
print "   Two: $two\n";
print " Three: $three\n";

# we ended here
# how to put  space in qw()
# how to put interpolated value in qw()
# Craig sent email out on these 2014-06-03

@list12 = ();
@list13 = undef;

print "List12: @list12\n";
print "List13: @list13\n";

print "\n\n";

print "push/pop work on the right hand side\n\n";

my @things = qw( thing1 thing2 );
my @stuff;

push(@stuff, 'craig');
print "Stuff: @stuff\n";

push @stuff, @things;
print "Stuff: @stuff\n";

push @stuff, 1..10;
print "Stuff: @stuff\n";

push @stuff, ( "adding", "a", "list" );
print "Stuff: @stuff\n";

print "\npop things off\n\n";

my $element = pop @stuff;
print "  Stuff: @stuff\n";
print "Element: $element\n";

$element = pop @stuff;
print "  Stuff: @stuff\n";
print "Element: $element\n";

pop @stuff;
print "  Stuff: @stuff\n";
print "Element: $element\n";                # same value as before

print "the fourth Element: $stuff[3]\n";

print "\n\n";

print "shift/unshift work on the left hand side\n\n";

my @things2 = qw( thing1 thing2 );
my @stuff2;

push @stuff2, 'craig';
print "Stuff2: @stuff2\n";

push @stuff2, @things2;
print "Stuff2: @stuff2\n";

print "\nshift things off\n\n";

my $element2 = shift @stuff2;
print "  Stuff2: @stuff2\n";
print "Element2: $element2\n";

shift @stuff2;
print "  Stuff2: @stuff2\n";
print "Element2: $element2\n";

print "\nunshift things back on the left\n\n";

unshift @stuff2, "treptow";
print "  Stuff2: @stuff2\n";

my @steve = ('blah');
print Dumper(\@steve,\@stuff2);
unshift @steve, @stuff2;
print Dumper(\@steve);
print "Steve: @steve\n";

print "\n\n";


print "\nsplice things out of the middle\n\n";

my @numbers = 1..20;

print "Numbers: @numbers\n";

my @section = splice @numbers, 10;           # you get starting position to the end

print "Numbers: @numbers\n";
print "Section: @section\n";

push @section, splice @numbers, 2, 5;           # specify the length, too

print "XNumbers: @numbers\n";
print "XSection: @section\n";

my $thing = splice @numbers, 2, 1;           # specify the length, too

print "Numbers: @numbers\n";
print "Thing: $thing\n";

push @numbers, 11;

my @replacements = qw( a b c );
@section = splice @numbers, 2, 2, @replacements;    # replace what you take out

print "Numbers: @numbers\n";
print "Section: @section\n";
exit;
print "\n\n";

print "\ndo some looping\n\n";

my @names = qw( jax
Jemma clay bobby tigg opey );

foreach ( @names ) {
    print "1 Hello: $_\n";
}

print "\n";

for ( @names ) {
    print "2 Hello: $_\n";
}

print "\n";

for my $name ( @names ) {
    print "3 Hello: $name\n";
}

print "\n";

for my $name ( reverse @names ) {
    print "4 Hello: $name\n";
}

print "\n";

for my $name ( sort { lc($a) cmp lc($b) } @names ) {
    print "5 Hello: $name\n";
}

my @numbers2 = 1..25;
my $number;

for ( my $i = 0; $i <= 9; $i++ ) {
    $number = $numbers2[$i];
    print "the number is: $number\n";
}

print "\n";

my $num_elements = @names;                          # how many elements?
print '@names has ', $num_elements, " names\n";

print '@names has ', scalar @names, " names\n";     # works as well

@names = qw( a b c d e f );

print "A \n\n@names\n";

my @backwards = reverse @names;
print "B @backwards\n";

my $backwards = @names;                     # reverse in scalar context
print "C $backwards\n";

