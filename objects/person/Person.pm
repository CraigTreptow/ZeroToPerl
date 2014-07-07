package Person;

use warnings;
use strict;
use Data::Dumper;

sub new {
    my ( $class, $arg_for ) = @_;

    die Data::Dumper::Dumper( $class );

    my $self = {
        eye_color   =>  $arg_for->{eye_color},
        height      =>  $arg_for->{height},
        weight      =>  $arg_for->{weight},
    };

  bless $self, $class ;

  return $self;
}

sub get_eye_color {
    my $self = shift;
    my $color = $self->{eye_color};
    return $color;
}

1;
