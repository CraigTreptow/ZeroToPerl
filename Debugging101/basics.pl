#!/usr/bin/env perl
use warnings;
use strict;

#my $input           = $ARGV[0];
my $input = 'abd';

my $a = _is_cliche( $input );

my $cliche_answer   = _is_cliche( $input ) ? 'Yes' : 'No';

print "\nIs $input cliche? $cliche_answer\n";

sub _is_cliche {
    my $string = shift;
    my $result;

    for my $char ( split //, $string ) {
        print "$char - ", ord $char, " - ", ( ord $char ) / 2, "\n";
        $result += ( ord $char ) / 2;
    }

    $result = sprintf "%d", ( $result / 10 ) - 1;

    print "Result: $result";

    my $final_result;

    if ( $result == 42 ) {
    	$final_result = 1;
    }
    else {
    	$final_result = 0;
    }

    #return $result == 42;
    return 42;
}
