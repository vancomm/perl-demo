use strict;
use warnings;

use Animal ();

my $animal = Animal->new();

while (<>) {
    chomp;
    $animal->eat(split ' ', $_);
}
