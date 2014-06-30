#!/usr/local/bin/perl

package Chapter21;

use strict;
use warnings;

BEGIN {
    use Exporter;
    our @ISA = qw(Exporter);
    our @EXPORT_OK = qw( main );
    our $VERSION = 0.0.1;
}

use CGI qw(:standard);
use CGI::Carp qw(carpout fatalsToBrowser);
use Data::Dumper;

use English;
$INPUT_RECORD_SEPARATOR = "\r\n";

#$/ = "\r\n";

my $CGI = new CGI;
print $CGI->header();

my $radius;
print "What is the radius? ";
chomp($radius = <STDIN>);
print "radius[$radius]\n";
if($radius < 0){
      $radius = 0;
}

my $pi = 3.141592654;
my $circumference;

$circumference = 2 * $radius * $pi;
print "The circumference of $radius is $circumference.\n";

