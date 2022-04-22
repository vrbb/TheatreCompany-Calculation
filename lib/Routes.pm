#!/usr/bin/perl
use strict; # Error readability
use warnings;
package Routes;

# Routes here
sub setup_routing {
	my $self = shift;
	 
	my $public = $self->routes;
}

# Start here
sub startup {
	my $self = shift;

	$self->setup_routing;
}

1;