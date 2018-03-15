package Perl6Org::Binaries;

use 5.026;
use Mojo::Base -base;
use Mojo::Collection qw/c/;
use File::Glob qw/bsd_glob/;
use File::Spec::Functions qw/catfile/;
use Mojo::File qw/path/;

use Perl6Org::Binaries::Bin;
use Perl6Org::Binaries::Ver;

has 'binaries_dir';

sub all {
    my ($self, $product) = @_;
    $product or die "Must specify product to fetch all binaries for";

    my $products = $self->products('as_hashref');
    $products->{$product} or die "Unknown product `$product`. "
        . 'Did you specify the correct binaries dir?';
    $self->_get_vers_for($product);
}

sub products {
    my ($self, $as_hashref) = @_;
    my $prefix = 1+length $self->binaries_dir;
    my @prods = map substr($_, $prefix),
        grep -d, bsd_glob catfile $self->binaries_dir, '*';
    $as_hashref ? +{map +($_ => 1), @prods } : c sort @prods;
}

sub latest {
    my ($self, $product, $os) = @_;
    my %os_to_ext = (
        win64  => {qw/.msi 1  .exe 1/},
        win32  => {qw/.msi 1  .exe 1/},
        macos  => {qw/.dmg 1  .AppImage 1/},
        source => {qw/.tar.gz 1}/},
    );
    $os_to_ext{$os} or return;

    for my $ver ($self->all($product)->each) {
        for my $bin ($ver->bins->each) {
            if ($os_to_ext{$os}{$bin->ext}) {
                next if $os eq 'win32' and not $bin->is32;
                return $bin
            }
        }
    }
    return;
}

sub bin {
    my ($self, $product, $wanted_bin) = @_;
    for my $ver ($self->all($product)->each) {
        for my $bin ($ver->bins->each) {
            use Acme::Dump::And::Dumper;
            print DnD [$bin->bin, $wanted_bin];
            return $bin if $bin->bin eq $wanted_bin
        }
    }
    return
}

sub _get_vers_for {
    my ($self, $product) = @_;

    my $dir = catfile $self->binaries_dir, $product;
    my $prefix = 1 + length $dir;
    my @exts = qw/
        .tar.gz.sha256.txt  .tar.gz.asc
        .tar.gz
        .dmg  .AppImage
        .msi  .exe
    /;

    my %vers;
    for my $full_path (bsd_glob catfile $dir, '*') {
        my $file = substr $full_path, $prefix;
        my $ext;
        for (@exts) {
            next if -1 == rindex $file, $_;
            $ext = $_;
            last;
        }
        unless ($ext) {
            warn "Unknown extension on file $full_path; skipping";
            next;
        }
        my ($name, $ver) = $file =~ /(.+?)[.-](\d{4}(?:.\d+)+)/;
        my $is32 = ($file =~ /\Q-x86 (no JIT)\E/) ? 1 : 0;
        unless ($ver) {
            warn "Unknown version on file $full_path; skipping";
            next;
        }

        push $vers{$ver}->@*, Perl6Org::Binaries::Bin->new(
            bin  => $file,
            ext  => $ext,
            name => $name,
            path => catfile($product, $file),
            ver  => $ver,
            is32 => $is32,
            full_path => $full_path,
        );
    }

    my $marked_latest = 0;
    c map Perl6Org::Binaries::Ver->new(
        ver    => $_,
        bins   => c($vers{$_}->@*),
        latest => ($marked_latest++ ? 0 : 1),
    ), sort { $b cmp $a } keys %vers;
}

1;
