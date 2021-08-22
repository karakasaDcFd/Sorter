# implement this
package Sorter;
use strict;
use warnings;

sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    $self->set_values;
    return $self;
}

sub set_values {
    my ($self, @args) = @_;
    $self->{values} = \@args;
}

sub get_values {
    my $self = shift;
    return @{ $self->{values} };
}

sub sort {
    my $self = shift;
    my @sorted = sort { $a <=> $b } @{ $self->{values} };
    $self->set_values(@sorted);
}

1;
