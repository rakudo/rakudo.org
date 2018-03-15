package Perl6Org::Binaries::Ver;

use Mojo::Base -base;
use POSIX qw/strftime/;
has [qw/bins  ver  latest/];

sub name { shift->bins->[0]->name }
sub archived {
    (shift->ver cmp strftime "%Y.%m", localtime time-60*60*24*365) == -1
}

1;

