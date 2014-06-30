#!/usr/bin/env perl

use warnings;
use strict;

use Data::Dumper;

print "\n\n";
### split ###

my $string = q{Foo:Bar:Moo};
my @fields = split /:/, $string;    # (Foo, Bar, Moo)
print '[', "@fields", "]\n";

$string = qq{Here is \tsome       input    with tabs       and spaces};
@fields = split /\s+/, $string;
print '[', "@fields", "]\n";

$string = qq{Here is \tsome       input    with tabs       and spaces
and a newline};
@fields = split /\s+/, $string;
print '[', "@fields", "]\n";

$string = qq{:::a:b:c:::};
@fields = split /:/, $string;
print '[', "@fields", "]\n";          # trailing empty fields are discarded

$string = qq{:::a:b:c:::};
@fields = split /:/, $string, -1;
print '[', "@fields", "]\n";          # trailing empty fields are kept (-1 means no limit)

$string = q{Foo:Bar:Moo};
@fields = split /:/, $string, 2;    # (Foo, Bar, Moo)
print '[', "@fields", "]\n";



print "\n\n";
### join ###

my @names = ('Foo', 'Bar', 'Moo');
$string = join ':', @names;
print "$string\n";                       # Foo:Bar:Moo
 
my $data = join "-", $string, "names";
print  "$data\n";                      # Foo:Bar:Moo-names
 
$string = join '', @names, 'Baz';
print "$string\n";                       # FooBarMooBaz

$string = q{Foo:Bar:Moo};
@fields = split /:/, $string;    # (Foo, Bar, Moo)
$string = join '-', @fields;
print "$string\n";

print "\n\n";
### map ###

print big_money( 12345678.9 ), "\n";

my @data = ( 4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95, -30.01, -1234.1 );
my @formatted_data;

foreach ( @data ) {
    push @formatted_data, big_money( $_ );
}
print "@formatted_data", "\n";

@formatted_data = map { big_money( $_ ) } @data;
print "@formatted_data", "\n";

print "\nThe money numbers are:\n",
map { sprintf("%25s\n", $_) } @formatted_data;

@data = ( 4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95, -30.01, -1234.1 );
print "\nThe money numbers are:\n",
map { sprintf("%25s\n", big_money( $_ ) ) } @data;

print "Some powers of two are:\n",
map "\t" . ( 2 ** $_ ) . "\n", 0..15;

print "Some powers of two are:\n",
map { "\t" . 2 ** $_ . "\n" } 0..15;


### subs ###

sub big_money {
    
    # Example input:  12345678.9
    
    my $number = sprintf "%.2f", shift @_;
    
    # now $number is 12345678.90
    
    # -? allows for a possible negative sign at the front of the string
    
    # Add one comma each time through the do-nothing loop
    # as long as the substitution returns a true value (meaning success) the loop body runs
    while ( $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/ ) {
        1;
    }
    
    # now number is 12,345,678.90
    
    # Put the dollar sign in the right place
    $number =~ s/^(-?)/$1\$/;
    
    return $number;
    
}
