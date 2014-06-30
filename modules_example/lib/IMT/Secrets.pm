package IMT::Secrets;
use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);
our @EXPORT_OK = qw( enkode );

sub enkode {
    my $character = shift;
    
    if ( $character !~ /[a-z]|[A-Z]|[0-9]/) {
        return undef;
    }
    else {
        return ord ( $character );
    }
    
    # iteration 4
    #if ( $character eq ',') {
    #    return undef;
    #}
    #else {
    #    return ord ( $character );
    #}
    
    
    # iteration 3
    #return ord( $character );
    
    # iteration 2
    #if ( $character eq 'a') {
    #    return 97;
    #}
    
    
    # first iteration
    #return 97;
}



1;
