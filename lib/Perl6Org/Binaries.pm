package Perl6Org::Binaries;

use 5.026;
use Mojo::Base -base;
use Mojo::Collection qw/c/;
use File::Glob qw/bsd_glob/;
use File::Spec::Functions qw/catfile/;
use Mojo::File qw/path/;
use Sort::Versions;

use Perl6Org::Binaries::Bin;
use Perl6Org::Binaries::Ver;

has 'binaries_dir';

sub all {
    my ($self, $bin) = @_;
    $bin or die "Must specify product to fetch all binaries for";

    my $products = $self->products('as_hashref');
    $products->{$bin} or die "Unknown product `$bin`. "
        . 'Did you specify the correct binaries dir?';
    $self->_get_vers_for($bin);
}

sub products {
    my ($self, $as_hashref) = @_;
    my $prefix = 1+length $self->binaries_dir;
    my @prods = map substr($_, $prefix),
        grep -d, bsd_glob catfile $self->binaries_dir, '*';
    $as_hashref ? +{map +($_ => 1), @prods } : c sort @prods;
}

sub _get_vers_for {
    my ($self, $bin) = @_;

    my $dir = catfile $self->binaries_dir, $bin;
    my $prefix = 1 + length $dir;
    my @exts
        = qw/.tar.gz.sha256.txt  .tar.gz.asc  .tar.gz  .dmg  .msi  .AppImage/;

    my %vers;
    for my $full_path (bsd_glob catfile $dir, '*') {
        my $file = substr $full_path, $prefix;
        my $ext;
        for (@exts) {
            next if -1 == rindex $file, $_;
            $ext = $_;
            $file = substr $file, 0, length($file) - length $ext;
        }
        unless ($ext) {
            warn "Unknown extension on file $full_path; skipping";
            next;
        }
        my ($name, $ver) = $file =~ /(.+?)(?<!perl6)[.-](\d+.+)/;
        if ($ver) {
            $ver
            =~ s/(?: \Q-x86_64 (JIT)\E | \Q-x86_64\E | \Q-x86 (no JIT)\E)//x;
        }
        else {
            warn "Unknown version on file $full_path; skipping";
            next;
        }

        push $vers{$ver}->@*, Perl6Org::Binaries::Bin->new(
            bin  => $file,
            ext  => $ext,
            name => $name,
            path => $full_path,
            ver  => $ver,
        );
    }

    my $marked_latest = 0;
    c map Perl6Org::Binaries::Ver->new(
        ver    => $_,
        bins   => c($vers{$_}->@*),
        latest => ($marked_latest++ ? 0 : 1),
    ), sort { versioncmp($b, $a) } keys %vers;
}

1;
