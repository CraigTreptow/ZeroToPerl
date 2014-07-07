package Person::Minor;

use base Person;

sub new {
    my ( $class, $arg_for ) = @_;

    my $self = $class->SUPER::new($arg_for);

    $self->{grade} = $arg_for->{grade} || 'K';

  return $self;
}

sub get_grade {
    my $self = shift;
    my $grade = $self->{grade};
    return $grade;
}

1;
