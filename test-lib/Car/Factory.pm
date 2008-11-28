package Car::Factory;

use strict;

use Class::Interface;

&extends('Car::AbstractFactory');

use Car::Fiat;
use Car::Ford;
use Car::Mercedes;
use Car::BMW;

sub new {
  return bless( {}, ref( $_[0] ) || $_[0] );
}

sub createCar {
  my ( $self, $car ) = @_;

  my $created;
  if ( lc($car) eq "fiat" ) {
    $created = Car::Fiat->new();

  } elsif ( lc($car) eq "ford" ) {
    $created = Car::Ford->new();

  } elsif ( lc($car) eq "mercedes" ) {
    $created = Car::Mercedes->new();

  } elsif ( lc($car) eq "bmw" ) {
    $created = Car::BMW->new();

  } else {
    die "Cannot build cars of type $car (yet)";
  }

  $self->rememberCreatedCar($car);

  return $created;
}

1;
