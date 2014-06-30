package IMT::Shape::Circle;
#use parent IMT::Shape; # v5.10 or higher required
use base IMT::Shape;

sub new {
    my ($class, $args) = @_;
    my $self = {
        color    => $args->{color} || 'black',
        diameter => $args->{diameter} || 1,
    };
    my $object = bless $self, $class;
    $object->_set_creation_date;
    return $object;
}

sub get_radius {
    my $self = shift;
    return $self->{diameter} * 0.5;
}

sub get_circumference {
    my $self = shift;
    return $self->{diameter} * 3.14;
}

sub get_area {
    my $self = shift;
    my $area = $self->get_radius ** 2 * 3.14;
}

1;
