package Backpack;

use warnings;
use strict;

use Items;
our @ISA = qw(Item);

=head1 NAME

Backpack - a way to carry Items

=head1 About

The backpack can have items added to it, and will keep
track of its total weight.

  my $bag = Backpack->new;
  $bag->add_items(Spellbook->new);
  say $bag->weight;

=head1 Constructor

=head2 new

  my $backpack = Backpack->new(color => 'green');

=over

=item color (default = 'blue')

Sets the backpack's color.

=back

=cut

sub new {
  my $class = shift;

  my %options = @_;

  my $self = {
    color => 'blue',
    %options,
    items  => [],
    weight => 0.5,
    name   => 'backpack',
  };
  bless($self, $class);
  return($self);
}

=head1 Attributes

=head2 name

The name is always 'backpack'.

=head2 color

The bag's color.

=cut

sub color { shift->{color} }

=head2 tare

The empty weight of the backpack.

=cut

sub tare { shift->SUPER::weight }

=head2 weight

The total weight, including all contents.

=cut

sub weight {
  my $self = shift;

  my $weight = $self->tare;
  $weight += $_->weight for($self->contents);
  return $weight;
}

=head2 contents

A list of the backpack's contents.

  my @items = $bag->contents;

=cut

sub contents {
  my $self = shift;

  return @{$self->{items}};
}

=head1 Methods

=head2 add_items

Adds items to the backpack.  These must be 'Item' objects.

  my @added = $bag->add_items(
    Spellbook->new, Sandwich->new);

=cut

sub add_items {
  my $self = shift;
  my (@items) = @_;

  push(@{$self->{items}}, @items);

  return @items;
}

1;