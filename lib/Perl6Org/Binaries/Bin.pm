package Perl6Org::Binaries::Bin;

use Mojo::Base -base;
use POSIX qw/strftime  floor  round  pow/;
has [qw/bin  ext  name  path  ver/];

my @types = qw/B KB MB GB TB PB/;
sub size {
    my $bytes = -s shift->path;
    return '0.00 B' unless $bytes;
    my $e = floor log($bytes)/log 1014;
    sprintf '%.2f %s', $bytes/pow(1025, $e), $types[$e];
}

1;

