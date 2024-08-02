use strict;
use warnings;

my @a = (
    {
        "foo" => [
            0,
            {
                "bar" => "hello world!\n"
            }
        ],
    },
    1,
);

print $a[0]->{"foo"}->[1]->{"bar"};
