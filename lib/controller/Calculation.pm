#!/usr/bin/perl
use strict; # Error readability
use warnings;

package controller::Calculation;

use model::Performances; 

sub calculation_value {
    my $self = shift;

    my $entity = model::Performances::Tragedy->new('othelo',55);
    my $value = $entity->amount_for();
    return $value;
}



1;