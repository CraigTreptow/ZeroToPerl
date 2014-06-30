#!/usr/bin/env perl

use warnings;
use strict;

use Data::Dumper;

# eval
# Try::Tiny
# autodie

print "\n\n";
### eval ###

my $number1 = 12;
my $number2 = 0;
my $answer;

$answer = $number1 / $number2;

if ( !defined $answer ) {
    $answer = 'NaN';
}

print "\nDoing other work now with answer: $answer\n";

exit;

$answer = eval { $number1 / $number2 };

if ( !defined $answer ) {
    $answer = 'NaN';
}

print "\nDoing other work now with answer: $answer\n";



unless( eval { $number1 / $number2 } ) {
    print "Could not divide by zero, report the error: $@\n";
}

print "\n\n";
### Try::Tiny ###

use Try::Tiny;

$answer =
    try {
        $number1 / $number2
    }
    catch {
        print "Error was: [ $_ ], setting answer to 'NaN'\n\n";   # not $@
        $_ = 'NaN';
    }
    finally {
        print "This finally block always runs\n";
    };
    
print "the answer is: $answer\n";

print "\n\n";

warn "before";
$main::SIG{__WARN__} = \&handle_warn;
warn "after";

print "\n\n";

#die "before";
$main::SIG{__DIE__} = \&handle_die;
die "after";
    
sub handle_warn {
    my $warning = shift;
    
    print "Handling the warn, which was: [$warning]\n";
}

sub handle_die {
    my $error = shift;

    print "Handling the die, which was: [$error]\n";
}
