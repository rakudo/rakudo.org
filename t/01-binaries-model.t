#!perl

use 5.026;
use Test::Most tests =>
    4 # starting tests
    + 3 # different products
        *(1 # product test
            + 5 # versions for each product
                *(5)) # version tests
    + 6 # binary tests
      * (11*5), 'die'; #total binaries * number of versions
use File::Temp qw/tempdir/;
use File::Spec::Functions qw/catfile/;

use lib qw/lib/;
use Perl6Org::Binaries;

my @products = sort qw/rakudo  nqp  star/;
my $bins = Perl6Org::Binaries->new(binaries_dir => setup_temp_binaries_dir());
is_deeply $bins->products->to_array, \@products, 'found right products';
isa_ok $bins->products, 'Mojo::Collection', '->products';

dies_ok sub { $bins->all                  }, '->all without args dies';
dies_ok sub { $bins->all("blaaeassrrrrr") }, '->all with unknown product dies';

for my $p ($bins->products->each) {
    my $all = $bins->all($p);
    isa_ok $all, 'Mojo::Collection', "->all [$p]";

    my $seen_latest = 0;
    my $last_ver;
    $all->each(sub {
        my $ver = $_;
        state $i = 0;
        $i++;
        isa_ok $ver, 'Perl6Org::Binaries::Ver', '$ver';
        is $ver->latest, ($seen_latest++ ? 0 : 1),
            "latest is marked correctly [$p/$i]";
        if ($last_ver) {
            is +($last_ver cmp $ver->ver), 1,
                "later version ${\$ver->ver} is smaller than last"
                . " version $last_ver [$p/$i ${\$ver->name}]";
        }
        else {
            is $ver->ver, '2018.02.2', 'latest version is right';
        }
        $last_ver = $ver->ver;
        like   $ver->name, qr/\Q$p\E/, "->name appears to be right [$p/$i]";
        isa_ok $ver->bins, 'Mojo::Collection', "->bins [$p/$i]";

        $ver->bins->each(sub {
            state $j = 0;
            $j++;
            isa_ok $_, 'Perl6Org::Binaries::Bin', '$bin';
            ok +(-e $_->path),                   "->path [$p/$i/$j]";
            is   $_->ver,  $ver->ver,            "->ver  [$p/$i/$j]";
            like $_->name, qr/\Q$p\E/,           "->name [$p/$i/$j]";
            like $_->path, qr/\Q${\$_->ext}\E$/, "->ext  [$p/$i/$j]";
            like $_->path, qr/\Q${\$_->bin}\E$/, "->bin  [$p/$i/$j]";

        });
    });
}

#############################################
#############################################

sub setup_temp_binaries_dir {
    my $bin_dir = tempdir CLEANUP => 1;

    for my $ver (qw/2018.02.2  2018.02.1  2018.02  2018.01  2017.12/) {
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