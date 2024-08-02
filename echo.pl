use strict;
use warnings;

while (<>) {
    print "These are the words you said: ";
    while ($_ =~ m/(\w+)/g) {
        print $1 . " "
    }
    print "\n"
}