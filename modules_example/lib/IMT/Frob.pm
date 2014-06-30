package IMT::Frob;

use Exporter qw( import );
our @EXPORT_OK = qw( frobnicate );

sub frobnicate {
    my $character = shift;
    #my $answer;

    #if ( $character eq 'a' ) {
    #    $answer = 97;
    #}
#    elsif ( $character eq 'b' ) {
#        $answer = 98;
#    }

    #$answer = ord( $character );

    return ord( $character );
}

1;
