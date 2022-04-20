package model::Performances; # General
use strict; # Error readability


sub new { # Constructor
    my $this = shift;
    my $class = ref ($this) || $this;
    my $self = {
        name => shift,
        audience => shift,
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
    
    my $self = new Performances($name,$audience);

    return bless $self, $class;
}


sub amount_for { # Method
    my $self = shift; 
}

package model::Comedy; # Class
use strict; # Error readability

@ISA = qw /model::Performances/; 

sub new {  # Constructor
    my $this = shift;
    my $class = ref ($this) || $this;
    my $name = shift;
    my $audience = shift;
    
    my $self = new Performances($name,$audience);

    return bless $self, $class;
}

sub amount_for { # Method
    my $self = shift; 
}
