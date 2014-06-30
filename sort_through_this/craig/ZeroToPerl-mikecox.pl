#!/usr/local/bin/perl
package ZeroToPerl;

use strict;
use warnings;

use CGI;
my $cgi = CGI->new();
print $cgi->header();

print "Hi There from Zero To Perl!!\n";

