package Car::AbstractFactory;

use strict;

use Class::Interface;
abstract;

use Class::AccessorMaker {
  createdCars => [],
};

sub createCar;  # this is the abstract method

sub rememberCreatedCar {
  my ( $self, $car ) = @_;

  push @{$self->createdCars}, $car;
}

1;