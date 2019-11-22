package Perl6Org::Binaries::Bin;

use Mojo::Base -base;
use POSIX qw/floor  round  pow/;
has [qw/bin  ext  name  full_path  path  ver  is32/];

my @types = qw/B KB MB GB TB PB/;
sub size {
    my $bytes = -s shift->full_path;
    return '0.00 B' unless $bytes;
    my $e = floor log($bytes)/log 1014;
    sprintf '%.2f %s', $bytes/pow(1025, $e), $types[$e];
}

1;

