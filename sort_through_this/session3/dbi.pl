#!/usr/bin/env perl

use CGI;
use CGI::Carp qw(carpout fatalsToBrowser);

use warnings;
use strict;

use Data::Dumper;
use IMT::DBConnect qw(DBChopConnect);

my $cgi = CGI->new();
print $cgi->header('text/html');
print $cgi->start_html;
print $cgi->pre;

my $dbh = IMT::DBConnect::DB2ChopConnect();
my $max_general_id = 35_400;

my $sql = qq{
    select
        general_id
        ,policy_number
        ,eff_date

    from
        wcomdb.general g
    where
        g.general_id >= ?
};

my $sth = $dbh->prepare( $sql ) or die ( "DBI State: $DBI::state DBI Err: $DBI::err Could not prepare: ".$DBI::errstr."\n" );

$sth->execute( $max_general_id ) or die( "DBI State: $DBI::state DBI Err: $DBI::err Could not execute: ".$DBI::errstr."\n" );

print "Most used seem to be:\n";
print " fetchall_arrayref({})\n";
print " fetchall_arrayref()\n";
print " fetchall_hashref(\"some key\")\n";
print " fetchrow_array()\n";
print " fetchrow_hashref()\n";
print " fetchrow()\n";
print "\n\n";

print "Result row with fetchrow_arrayref\n";
my $array_ref = $sth->fetchrow_arrayref();
print Dumper( \$array_ref );
print "\nPolicy: $$array_ref[1]\n";
print "\n";

print "Result row with fetchrow_array\n";
my @array = $sth->fetchrow_array();
print Dumper( \@array );
print "\nPolicy: $array[1]\n";
print "\n";

print "Result row with fetchrow_hashref\n";
my $hash_ref = $sth->fetchrow_hashref();
print Dumper( \$hash_ref );
print "\nPolicy: $$hash_ref{'POLICY_NUMBER'}\n";
print "\n";

print "Resulting rows with fetchall_arrayref\n";
my $table_array_ref = $sth->fetchall_arrayref();
print Dumper( \$table_array_ref );
print "\nSecond Policy: $$table_array_ref[1][1]\n";
print "\n";

$sth->execute($max_general_id) or die( "DBI State: $DBI::state DBI Err: $DBI::err Could not execute: ".$DBI::errstr."\n" );
my $key_field = q{general_id};
print "Resulting rows with fetchall_hashref using $key_field as the key for the hash\n";
$hash_ref = $sth->fetchall_hashref('GENERAL_ID');
print Dumper( \$hash_ref );
print "\nPolicy for GID 34170: $$hash_ref{'34405'}->{'POLICY_NUMBER'}\n";
print "\n";

$sth->execute($max_general_id) or die( "DBI State: $DBI::state DBI Err: $DBI::err Could not execute: ".$DBI::errstr."\n" );
print "We do this A LOT\n\n";
print "Resulting rows with fetchall_arrayref while passing in an anonymous hash\n";
$table_array_ref = $sth->fetchall_arrayref({});
print Dumper( \$table_array_ref );
print "\nSecond Policy: $$table_array_ref[1]->{'POLICY_NUMBER'}\n";
print "\n";


print $cgi->br;
print $cgi->end_html;

