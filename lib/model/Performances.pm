#!/usr/bin/perl
use strict; # Error readability
use warnings;

package model::Performances; # General

use constant # Creating constants for play types
    TYPE_PLAY => {
        "tragedy" => 40,
        "comedy" => 60
    };

sub new { # Constructor
    my $this = shift;
    my $class = ref ($this) || $this;
    # Attributes in common across classes
    my $self = {
        name => shift,
        audience => shift,
        type_play => shift,
    };

    return bless $self, $class;
}


sub amount_for { # Method
    my $self = shift; 
    return ($self->audience * 1000) / type_play;
}

package model::Performances::Tragedy; # Class
use parent 'Performances';    # sets @Performances::Tragedy::ISA = ('Performances');

sub new { # Constructor
    my $this = shift;
    my $class = ref ($this) || $this;
    my $name = shift;
    my $audience = shift;
    
    my $self = new Performances($name,$audience,TYPE_PLAY->{tragedy});

    return bless $self, $class;
}



package model::Performances::Comedy; # Class
use parent 'Performances';    # sets @Performances::Comedy::ISA = ('Performances');

sub new {  # Constructor
    my $this = shift;
    my $class = ref ($this) || $this;
    my $name = shift;
    my $audience = shift;
    
    my $self = new Performances($name,$audience,TYPE_PLAY->{comedy});

    return bless $self, $class;
}

