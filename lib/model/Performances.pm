#!/usr/bin/perl
use strict; # Error readability
use warnings;
use Moose;

package model::Performances; # General

use constant # Creating constants for play types
    TYPE_PLAY => {
        "tragedy" => 40,
        "comedy" => 60
    };

# Declare the attributes
has "name" => {
    is => 'rw'  # Declare read and write at runtime
}, 
"audience" => {
    isa => 'Int', # Declare as integer
    is => 'rw'
},
"type_play" => {
    is => 'rw'
} ;

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

