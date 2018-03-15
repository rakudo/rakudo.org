package Perl6Org::Binaries::Ver;

use Mojo::Base -base;
has [qw/bins  ver  latest/];

sub name { shift->bins->to_array->[0]->name }

1;

