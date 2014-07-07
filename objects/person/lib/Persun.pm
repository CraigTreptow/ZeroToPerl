package Persun;

use warnings;
use strict;

sub new {
    my ( $class, $arg_for ) = @_;

    my $self = {
        name        =>  $arg_for->{name}        || 'Joe',
        hair_color  =>  $arg_for->{hair_color}  || 'black',
        eye_color   =>  $arg_for->{eye_color}   || 'hazel',
        height      =>  $arg_for->{height}      || 36,
        weight      =>  $arg_for->{weight}      || 50,
        gender      =>  $arg_for->{gender}      || 'B',
    };

  bless $self, $class ;

  return $self;
}

sub get_name {
    my $self = shift;
    my $color = $self->{name};
    return $color;
}

sub get_hair_color {
    my $self = shift;
    my $color = $self->{hair_color};
    return $color;
}

sub get_eye_color {
    my $self = shift;
    my $color = $self->{eye_color};
    return $color;
}

sub get_height {
    my $self = shift;
    my $color = $self->{height};
    return $color;
}

sub get_weight {
    my $self = shift;
    my $color = $self->{weight};
    return $color;
}

sub get_gender {
    my $self = shift;
    my $color = $self->{gender};
    return $color;
}

1;
