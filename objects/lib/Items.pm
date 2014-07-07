package Item;

use warnings;
use strict;
=head1 NAME

Item - the base class for items

=head1 Overview

The Item class defines the interface for all of the
manipulable items in the game.  Each subclass will have
a C<new()> constructor and some standard attributes
(defined below.)

=head2 Items

The following item subclasses are defined:

=over

=item Candle

=item Spellbook

=item Sandwich

=back

=head1 Constructor

=head2 new

  my $item = Item->new(%options);

=cut

sub new {
  my $class = shift;
  my $self = {@_};
  bless($self, $class);
  return $self;
}

=head1 Standard Attributes

All items have these attributes.

=head2 name

The name of the item.

=head2 weight.

The item's weight (in kilograms.)

=cut

sub name { shift->{name} }
sub weight { shift->{weight} }

package Candle;
our @ISA = qw(Item);

sub new {
  shift->SUPER::new(@_, weight => 0.05, name => 'candle')
}

package Spellbook;
our @ISA = qw(Item);

sub new {
  shift->SUPER::new(@_, weight => 1, name => 'spellbook')
}

package Sandwich;
our @ISA = qw(Item);

sub new {
  shift->SUPER::new(@_, weight => 0.1, name => 'sandwich')
}

1;