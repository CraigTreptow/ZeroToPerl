#!/usr/bin/env perl

use warnings;
use strict;
use Data::Dumper;

# Subs

my @numbers = 1..10;
my $number1 = 3;
my $number2 = 55;
my $number3 = 666;
my @numbers1 = 1..10;
my @numbers2 = 1..5;

my @nums = ( 99, 4, 5, 6 );

my $result = frob( \@nums );
print "Result: $result\n";

sub frob {
	my $numbers_ref = shift @_;
	my @numbers = @$numbers_ref;

	my $result;

#    die Dumper( \@numbers );

    my $total;
	for my $num ( @numbers ) {
		$total += $num;
	}

	if ( $total > 10 ) {
		$result = $total;
	}
	else {
		$result = 0;
	}

}

exit;
#foo( 3, 4 ,5,6);
#foo( \@nums );
#my ($foos_ref, $foo, $bar) = foo( [ 7, 8, 9, 10 ] );
#print "@$foos_ref\n";


sub foo {
#   my ( $num1, $num2 ) = @_;
	my $numbers_ref = shift;
	my @numbers = @$numbers_ref;

	my @results;

#   print "$numbers_ref\n\n";

   for my $num ( @numbers ) {
       print "Number is: $num\n";
       push @results, $num + 3;
   }

#    print "Num1: $num1\n";
#    print "Num2: $num2\n";

   return \@results, 'this', 'that';
}


#print_thing($number1, $number2, $number3);
#print_things(\@numbers);

#my $answer1 = sum_these(\@numbers1);
#my $answer2 = sum_these(\@numbers2);

my %params =    (
       last_name    =>  'treptow',
       first_name   =>  'craig',
   );


&do_things( \%params );

do_things(
   {
       last_name    =>  'treptow',
       first_name   =>  'craig',
       'arg3'		,	'argument3',
   }
);

sub do_things {
    my ($arg_for) = @_;

    my $first_name  = $arg_for->{first_name};
    my $last_name   = $arg_for->{last_name};
    my $arg3        = $arg_for->{arg3} || 'default';

    print "do_things First Name: $first_name\n";
    print "do_things Last Name: $last_name\n";
    print "do_things arg3: $arg3\n";
}


## wantarray
## returns undef if you don't use the return value
## returns 0 if you use it in scalar context
## returns 1 if you use it in list context

# usually used for returning a reference in scalar context

## review again

how_i_was_called();
my $foo1            = how_i_was_called();
my ($foo2)          = how_i_was_called();
my @bar             = how_i_was_called();
my ( $this, $that ) = how_i_was_called();
my %corned_beef     = how_i_was_called();

print "foo1 is $foo1\n";


sub how_i_was_called {
    if ( not defined wantarray ) {
        # no return value expected
        print "I was called in void context\n";
    }
    elsif ( not wantarray ) {
        # one return value expected
        print "I was called in scalar context\n";
    }
    else {
        # a list is expected
        print "I was called in list context\n";
    }

#    return 'this';
}

exit;

sub sum_these {
	my $numbers_ref = shift;
	my $sum = 0;

	for my $number ( @$numbers_ref ) {
		$sum = $sum + $number;
	}

	if ( $sum <= 50 ) {
		$sum = -1;
	}
#    else {
#        return -1;
#    }

	print "here i am\n";

#    my $return = $sum;

#    return $return;
	return $sum;

	print_thing('a', 'b', 'c');
}

sub print_thing {
#    my $thing1 = shift;
#    my $thing2 = shift;
    my ( $thing1, $thing2, $thing3 ) = @_;

    print "The thing passed in is: $thing1 and $thing2 and $thing3\n\n";
}

sub print_things {
    my $things_ref = shift;
    my @things = @$things_ref;

    for my $thing ( @$things_ref ) {
        print "One of the things passed in is: $thing\n\n";
    }
}



### for Steph
=pod
my $number = 3;
my @numbers = 1..10;

print "@numbers\n\n";

print_thing($number);
print_things(\@numbers);

exit;

sub print_thing {
    my $thing = shift;
    print "The thing passed in is: $thing\n\n";
}

sub print_things {
    my $things_ref = shift;
    my @things = @$things_ref;

    for my $thing ( @$things_ref ) {
        print "One of the things passed in is: $thing\n\n";
    }
}
=cut
###










#############################################################

# print_all(\$scalar, \@array, \%hash);

# my %stuff = (
#     key1    =>  'data1',
#     key2    =>  'data2',
# );

# my $one = 5;
# my $two = 2;
# my $three = 3;
# my $four = 4;

# my @stuff = ( 1, 2, 3, 4 );

# ( $one, $two ) = &_chomp( \@stuff );
# #print "one after sub 1: $one\n";
# #print "two after sub 1: $two\n";

# #do_it_2( \%stuff );

# my $this = 'this';

# frobnicate( $this );

# print "this[$this]\n";


##############################################################################################################

#sub frobnicate {
#    $_[0] = 'frobnicate';
#}

sub _chomp {

    my $numbers_ref = shift;
    my @numbers = @$numbers_ref;

    print "first number of array is: $numbers[0]\n";
    print "second number of array is: $numbers[1]\n";

#    my ( $first, $second, $third, $fourth ) = @_;

#    $first++;

#    my $foo = 1;

#    return $first, $fourth;
        return \@numbers;
}

sub do_it_2 {
#    my $params_ref = shift;
#    my %params = %$params_ref;
        my %params = shift;

        print "do_it_2 value for key1 is: $params{key1}\n";

}

sub print_hash {
    my $hash_ref = shift;

    print "Hash:\n";

    for my $key ( keys %$hash_ref ) {
        print "$key -> $$hash_ref{$key}\n";
    }

#    while ( my ( $key, $value ) = each %$hash_ref ) {
#        print "$key -> $value\n";
#    }

    print "\n";
}

sub print_hash_keys {
    my $hash_ref = shift;

    print "Hash keys:\n";

    for my $key ( keys %$hash_ref ) {
        print "$key\n";
    }

    print "\n";
}

sub print_all {
    my $scalar_ref = shift;
    my $arr_ref = shift;
    my $hash_ref = shift;

    print "Scalar: ", $$scalar_ref, "\n";
    print "Array: ", join ' ', @$arr_ref, "\n";
    print "Hash:\n ";
        while ( my ( $key, $value ) = each %$hash_ref ) {
        print "$key => $value\n";
    }
}
