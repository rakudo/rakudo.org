#!perl

use Test::Most tests => 11, 'die';
use File::Temp qw/tempdir/;
use File::Spec::Functions qw/catfile/;

use lib qw/lib/;
use Perl6Org::Binaries;

my @products = sort qw/rakudo  nqp  star/;
my $bins = Perl6Org::Binaries->new(binaries_dir => setup_temp_binaries_dir());

is_deeply $bins->products->to_array, \@products, 'found right products';
isa_ok $bins->products, 'Mojo::Collection', '->products';

for my $p ($bins->products->each) {
    dies_ok sub { $bins->all }, '->all without args dies';
    dies_ok sub { $bins->all("blaaeassr") }, '->all with unknown product dies';

    my $all = $bins->all('rakudo');
    isa_ok $all, 'Mojo::Collection', '->all';
}

#############################################
#############################################

sub setup_temp_binaries_dir {
    my $bin_dir = tempdir CLEANUP => 1;

    for my $ver (qw/2018.02.1  2018.02.1  2018.02  2018.01  2017.12/) {
        my @bins;
        # rakudo
        {
            mkdir my $dir = catfile $bin_dir, 'rakudo';
            push @bins, map { catfile $dir, $_ }
                "rakudo-$ver.tar.gz",
                "rakudo-$ver.tar.gz.asc";
        }

        # nqp
        {
            mkdir my $dir = catfile $bin_dir, 'nqp';
            push @bins, map { catfile $dir, $_ }
                "nqp-$ver.tar.gz",
                "nqp-$ver.tar.gz.asc";
        }

        # star
        {
            mkdir my $dir = catfile $bin_dir, 'star';
            push @bins, map { catfile $dir, $_ }
                "rakudo-star-$ver.tar.gz.sha256.txt",
                "rakudo-star-$ver.tar.gz.asc",
                "rakudo-star-$ver.tar.gz",
                "rakudo-star-$ver.dmg",
                "rakudo-star-$ver-x86_64 (JIT).msi",
                "rakudo-star-$ver-x86 (no JIT).msi",
                "org.perl6.rakudo-star.$ver-x86_64.AppImage";
        }
        for (@bins) {
            open my $fh_bin, '>', $_ or die "Failed to create $_: $!";
            print $fh_bin "x" x (1000 * rand);
        }
    }

    $bin_dir
}