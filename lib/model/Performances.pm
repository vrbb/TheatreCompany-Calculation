package model::tragedy; # Class

sub new {
    my $this = shift;
    my $class = ref ($this) || $this;
    my $self = {
        name => shift,
        audience => shift,
    }

    return bless $self, $class;
}


sub amount_for { # Method
    my $self = shift; 
}

package model::comedy; # Class

sub new {
    my $this = shift;
    my $class = ref ($this) || $this;
    my $self = {
        name => shift,
        audience => shift,
    }

    return bless $self, $class;
}

sub amount_for { # Method
    my $self = shift; 
}
