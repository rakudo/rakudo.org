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
    my ($self, $product, $platform_filter) = @_;
    $product or die "Must specify product to fetch all binaries for";

    my $products = $self->products('as_hashref');
    $products->{$product} or die "Unknown product `$product`. "
        . 'Did you specify the correct binaries dir?';
    my $vers = $self->_get_vers_for($product, $platform_filter);
}

sub platforms {
    my ($self, $as_hashref) = @_;
    my @platforms = qw(win linux macos src);
    $as_hashref ? +{map +($_ => 1), @platforms } : c @platforms;
}

sub products {
    my ($self, $as_hashref) = @_;
    my $prefix = 1+length $self->binaries_dir;
    my @prods = map substr($_, $prefix),
        grep -d, bsd_glob catfile $self->binaries_dir, '*';
    $as_hashref ? +{map +($_ => 1), @prods } : c sort @prods;
}

sub latest {
    my ($self, $product, $platform, $type) = @_;

    my $products = $self->products('as_hashref');
    $products->{$product} or die "Unknown product `$product`. "
        . 'Did you specify the correct binaries dir?';

    my $platforms = $self->platforms('as_hashref');
    $platforms->{$platform} or die "Unknown platform `$platform`.";

    my @bins;
    for my $ver ($self->all($product)->each) {
        next unless $ver->latest;
        for my $bin ($ver->bins->each) {
            my $bin_type = $bin->type;
            next if $type && index($type, $bin_type) == -1;
            next if $platform ne $bin->platform;
            next if $type =~ '32'             && !$bin->is32;
            next if (!$type || $type !~ '32') &&  $bin->is32;
            push @bins, $bin;
        }
    }
    return sort { $b->default cmp $a->default } @bins;
}

sub bin {
    my ($self, $product, $wanted_bin) = @_;
    for my $ver ($self->all($product)->each) {
        for my $bin ($ver->bins->each) {
            return $bin if $bin->bin eq $wanted_bin
        }
    }
    return
}

sub _get_vers_for {
    my ($self, $product, $platform_filter) = @_;

    my $dir = catfile $self->binaries_dir, $product;
    my $prefix = 1 + length $dir;

    my %types = (
        win      => {qw/.txt sig  .asc sig  .zip archive  .msi installer  .exe installer/},
        linux    => {qw/.txt sig  .asc sig  .tar.gz archive/},
        macos    => {qw/.txt sig  .asc sig  .tar.gz archive  .dmg installer  .AppImage installer/},
        src      => {qw/.txt sig  .asc sig  .tar.gz archive/},
    );

    my %vers;
    for my $full_path (bsd_glob catfile $dir, '*') {
        my $file = substr $full_path, $prefix;

        unless ($file =~ /^$product-(\d{4}\.\d{2}(?:.\d+)?)(?:-([^.]+))?\..+$/) {
            warn "Strange filename on file $full_path; skipping";
            next;
        }

        my ($ver, $plat_text) = ($1, $2);

        my $platform;
        if (!$plat_text) {
            $platform = 'src';
        }
        else {
            for my $pf ($self->platforms->each) {
                if ($plat_text =~ /$pf/) {
                    $platform = $pf;
                    last;
                }
            }
        }
        unless ($platform) {
            warn "Unknown platform on file $full_path; skipping";
            next;
        }
        
        next if $platform_filter && $platform_filter ne $platform;

        my $ext;
        for my $e (keys $types{$platform}->%*) {
            next if $file !~ /$e$/;
            $ext = $e;
            last;
        }
        unless ($ext) {
            warn "Unknown extension on file $full_path; skipping";
            next;
        }

        my $type = $types{$platform}->{$ext};

        my $is32 = ($plat_text && $plat_text =~ /\Qx86 (no JIT)\E/) ? 1 : 0;

        my $default =
            $platform eq 'win'   && $type eq 'installer' && $ext eq '.msi' ? 1 :
            $platform eq 'macos' && $type eq 'installer' && $ext eq '.dmg' ? 1 :
            $platform eq 'linux' && $type eq 'archive'                     ? 1 :
            $platform eq 'src'   && $type eq 'archive'                     ? 1 :
            0;

        unless ($ver) {
            warn "Unknown version on file $full_path; skipping";
            next;
        }

        push $vers{$ver}->@*, Perl6Org::Binaries::Bin->new(
            bin       => $file,
            ext       => $ext,
            name      => $product,
            path      => catfile($product, $file),
            ver       => $ver,
            platform  => $platform,
            is32      => $is32,
            full_path => $full_path,
            type      => $type,
            default   => $default,
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
