package ZeroToPerl;

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

my $CGI = new CGI;
print $CGI->header();

print "<font size=4><b>Learning Perl at IMT 2013</font><br>\n";
print "<pre>\n";

print_hello();

print "</pre>\n";

############################################################################
# Subs
############################################################################

sub print_hello {
    print "Hi There from Zero To Perl!!\n";
}
