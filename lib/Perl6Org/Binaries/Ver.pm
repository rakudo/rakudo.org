package Perl6Org::Binaries::Ver;

use Mojo::Base -base;
has [qw/bins  ver  latest/];

sub name { shift->bins->[0]->name }

1;

