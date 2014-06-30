#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

my @things = qw( craig lisa mikaela macy );
my %things2 = qw( craig was );
#doit( \@things, \%things2 );

my %things3 = ( craig => 'treptow', lisa => 'treptow', macy => 'treptow', );

my $russ = keys %things3;
print scalar keys %things3, "\n";
print "$russ\n";




sub doit {

    print "@_";

    print "\n";

#    die;
#    die Dumper( \@_ );

	my $stuff_ref = shift;
	my @things = @$stuff_ref;
	my $count = @things;

	print "\n@things\n";
	print scalar @things, "\n";
	print "$count\n";
	print "$#things\n";

	exit;

    print "\n$stuff_ref\n";



	print "@$stuff_ref";

	print "\n\n";

	for my $thing ( @$stuff_ref ) {
		print "Thing: $thing\n";
	}

}
