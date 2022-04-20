package model::Performances; # Geral
use strict;

sub new {
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

package model::Tragedy; # sub-Class
@ISA = qw /model::Performances/; 

sub new {
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

package model::Comedy; # sub-Class
@ISA = qw /model::Performances/; 

sub new {
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
