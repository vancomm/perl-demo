use strict;
use warnings;

package Animal;

use parent ("Exporter");

sub new {
    my $class = shift @_;
    return bless { "legs" => 4, "fur" => "brown" }, $class;
}

sub eat {
    my $self = shift @_;
    foreach my $food ( @_ ) {
        if ($self->can_eat($food)) {
            print "mmm yummy " . $food . "\n";
        } else {
            print "yucky " . $food . " >:(\n";
        }
    }
}

sub can_eat {
    $_ ne "bad not tasty"
}

our @EXPORT_OK = ("new", "eat");

1;