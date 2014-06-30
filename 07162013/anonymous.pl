#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

# anonymous hash

do_things(
   {
       last_name    =>  'treptow',
       first_name   =>  'craig',
       'arg3'		,	'argument3',
   }
);

my %params =    (
       last_name    =>  'treptow',
       first_name   =>  'craig',
   );


&do_things( \%params );

sub do_things {
    my ($arg_for) = @_;

    my $first_name  = $arg_for->{first_name};
    my $last_name   = $arg_for->{last_name};
    my $arg3        = $arg_for->{arg3} || 'default';

    print "do_things First Name: $first_name\n";
    print "do_things  Last Name: $last_name\n";
    print "do_things       arg3: $arg3\n";
}

print "\n\n";

# anonymous list

print 'Sum: ', sum_these( [ 1, 2, 3, 4 ] ), "\n";

sub sum_these {
	my $numbers_ref	= shift;
	my $total = 0;

	for my $number ( @$numbers_ref ) {
		$total += $number;
	}

	return $total;
}

# anonymous subroutine

my $reciprocal = sub { return 1 / shift };
print 'Reciprocal: ', $reciprocal->(4);

print "\n\n";

# Closure
#
# A closure is a subroutine that refers to a variable defined outside of its block;
#
# Fibonacci number
# F(0) = 0;
# F(1) = 1;
# F(n) = F(n - 1) + F(n - 2)

# the list is infinite, which is not feasible to generate all at once
# use a closure to create an iterator that generates these numbers one at
# a time

my $iterator = make_fibonacci();

# the $iterator contains a reference to the anonymous subroutine
# and "remembers" the values for $current and $next
# every time it is invoked it updates those values and returns
# the next Fibonacci number

for ( 1 .. 10 ) {
	my $fibonacci = $iterator->();
	print "$fibonacci\n";
}


# returns an anonymous subroutine that references the
# $current and $next variable declared in make_fibonacci()
# , but outside the anonymous subroutine

sub make_fibonacci {
	my ( $current, $next ) = ( 0, 1 );
	return sub {
		my $fibonacci = $current;
		( $current, $next ) = ( $next, $current + $next );
		return $fibonacci;
	};
}
