package model::Performances; # General
use strict; # Error readability

use constant # Creating constants for play types
    TYPE_PLAY => {
        "tragedy" => 1,
        "comedy" => 2
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
}

package model::Tragedy; # Class
use strict; # Error readability

@ISA = qw /model::Performances/; 

sub new { # Constructor
    my $this = shift;
    my $class = ref ($this) || $this;
    my $name = shift;
    my $audience = shift;
    
    my $self = new Performances($name,$audience,TYPE_PLAY->{tragedy});

    return bless $self, $class;
}



package model::Comedy; # Class
use strict; # Error readability

@ISA = qw /model::Performances/; 

sub new {  # Constructor
    my $this = shift;
    my $class = ref ($this) || $this;
    my $name = shift;
    my $audience = shift;
    
    my $self = new Performances($name,$audience,TYPE_PLAY->{comedy});

    return bless $self, $class;
}

