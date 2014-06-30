package IMT::Shape;

# the constructor method
# returns an object that is an instance of the class

# the name could be anything, but convention is to use 'new'
sub new {
	my ( $class, $args )	= @_;
	my $self 	= {
		color	=>	$args->{color}	|| 'black',		# three attributes passed into the constructor
		length	=>	$args->{length}	|| 1,			# use defaults if nothing is passed in
		width	=>	$args->{width}	|| 1,
	};

	my $object = bless $self, $class;
	$object->_set_creation_date;

	return $object;
}

sub get_length {
	my $self	= shift;
	my $length 	= $self->{length};

	return $length;
}

sub get_area {
	my $self	= shift;
	my $area 	= $self->{length} * $self->{width};

	return $area
}

sub get_color {
	my $self = shift;
	return $self->{color};
}

sub set_color {
	my ($self, $color) = @_;

	$self->{color} = $color;
}

# builder methods set the value of
# an object attribute at construction time
#
# convention of naming with '_' first
# says, nobody should call this
# it is for internal use only

sub _set_creation_date {
	my $self = shift;
	my $time = localtime;

	$self->{creation_date} = $time;
}

sub get_creation_date {
	my $self = shift;

	return $self->{creation_date};
}

1;
