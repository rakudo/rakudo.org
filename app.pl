#!/usr/bin/env perl

use lib qw<lib>;
use File::Spec::Functions qw/catfile/;
use Mojolicious::Lite;
use Mojo::File qw/path/;
use Mojo::Util qw/trim  xml_escape/;
use Time::Moment;
use RakudoOrg::News;
use Perl6Org::Binaries;

plugin Config => { file => 'conf.conf' };

my $news    = RakudoOrg::News->new;
my $binaries = Perl6Org::Binaries->new(
    binaries_dir => app->config('binaries_dir')
);
push app->static->paths->@*, app->config('binaries_dir');

plugin AssetPack => { pipes => [qw/Sass  JavaScript  Combine/] };
app->asset->process('app.css' => qw{
    https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css

    sass/open-iconic-bootstrap.css
    sass/main.scss
});
app->asset->process('app.js' => qw{
    https://code.jquery.com/jquery-3.3.1.min.js
    https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js
    https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js

    js/platform.js
    js/main.js
});

### Routes
get '/' => sub {
    my $self = shift;
    $self->stash(body_class => 'home');
}, => 'home';
get '/news' => sub {
    my $self = shift;
    $self->stash(posts => $news->all);
};
get '/post/#post' => sub {
    my $c = shift;
    my ($meta, $html) = $news->load($c->param('post'));
    $html or return $c->reply->not_found;

    $c->stash(%$meta, post => $html, title => $meta->{title});
} => 'post';

get $_ for qw{/about /docs /star /community};

get '/issue-trackers' => 'issue_trackers';

### DOWNLOADS ROUTES
get '/star/windows'             => 'star-windows';
get '/star/macos'               => 'star-macos';
get '/star/source'              => 'star-source';
get '/star/third-party'         => 'star-third-party';
get '/downloads/rakudo/third-party' => 'downloads-rakudo-third-party';
get '/downloads/rakudo/source'      => 'downloads-rakudo-source';
get '/downloads/verifying'      => 'downloads-verifying';

get '/downloads' => sub {
    my $self = shift;
    $self->stash(
        binaries   => $binaries,
        body_class => 'downloads',
    );
} => 'downloads';

get '/downloads/star' => sub {
    my $self = shift;
    $self->stash(vers => $binaries->all('star'));
} => 'downloads-star';

get '/downloads/rakudo' => sub {
    my $self = shift;
    $self->stash(
        rakudo_vers => $binaries->all('rakudo'),
        nqp_vers    => $binaries->all('nqp')
    );
} => 'downloads-rakudo';

get '/latest/:product/:platform' => { type => '' } => sub {
    my $self = shift;
    my @bins = $binaries->latest(
        $self->stash('product'), $self->stash('platform'), 0, $self->stash('type'))
        or return $self->reply->not_found;
    my $bin = $bins[0];

    $self->res->headers->content_type('application/octet-stream');
    $self->res->headers->content_disposition(
        'attachment; filename="' . $bin->bin . '"'
    );
    $self->reply->static($bin->path);
} => 'latest';

get '/dl/:product' => sub {
    my $self = shift;

    my @data;
    my $vers = $binaries->all($self->stash('product'));
    for my $ver ($vers->each) {
        for my $bin ($ver->bins->each) {
            (my $format = $bin->ext) =~ s/^\.//;
            push @data, {
                name      => $bin->name,
                ver       => $bin->ver,
               (build_rev => $bin->build_rev) x!! $bin->build_rev,
                platform  => $bin->platform,
               (arch      => $bin->arch)      x!! $bin->arch,
               (toolchain => $bin->toolchain) x!! $bin->toolchain,
               (backend   => $bin->backend)   x!! $bin->backend,
                type      => $bin->type,
                format    => $format,
                latest    => $ver->latest,
                url       => $self->url_for(
                    'dl',
                    product => $self->stash('product'),
                    bin     => $bin->bin
                )->to_abs,
            };
        }
    }

    $self->render(
        json => \@data,
        format => 'json',
    );
} => 'file-index';

get '/dl/:product/*bin' => sub {
    my $self = shift;
    my $bin = $binaries->bin($self->stash('product'), $self->stash('bin'))
        or return $self->reply->not_found;

    if ($bin->type eq 'sig') {
        $self->res->headers->content_type('text/plain');
    }
    else {
        $self->res->headers->content_type('application/octet-stream');
        $self->res->headers->content_disposition(
            'attachment; filename="' . $bin->bin . '"'
        );
    }
    $self->reply->static($bin->path);
} => 'dl';

### </DOWNLOADS ROUTES>

get '/community/irc' => sub {
    shift->redirect_to('https://web.libera.chat/#raku');
} => 'community-irc';
get '/community/irc-dev' => sub {
    shift->redirect_to('https://web.libera.chat/#raku-dev');
} => 'community-irc-dev';

any $_ => sub {
    my $c = shift;
    my $posts = [ map +{ %$_ }, @{ $news->all } ];
    $_->{date} = post_date_to_feed_date($_->{date}) for @$posts;

    my $news_last_updated_date = $posts->[0]{date};
    $c->stash(
        posts       => $posts,
        last_update => $news_last_updated_date,
        template    => 'feed',
        format      => 'xml',
    );
}, ($_ eq '/feed' ? 'feed' : ())
    for '/feed', '/feed/', '/feed/index', '/atom', '/atom/', '/atom/index';

get '/pull/*password' => sub {
    my $c = shift;

    return $c->reply->not_found
        unless $c->param('password') eq trim path('pull-password')->slurp;

    $c->render(
        text   => "Pulled!\n" . `git pull`,
        format => 'txt',
    );
};

helper make_crumbs => sub {
    my ($self, @raw_crumbs) = @_;
    my @crumbs;
    my $current;
    for (grep !($_ % 2), 0..$#raw_crumbs) {
        $_ < $#raw_crumbs-1
            ? push(@crumbs, [$raw_crumbs[$_], $raw_crumbs[$_+1]])
            : ($current = $raw_crumbs[$_])
    }
    $current // die 'Missing "current" page in breadcrumbs helper';

    my $c = join "\n",
        '<nav aria-label="breadcrumb" class="breadcrumbs">'
        . '<ol class="breadcrumb bg-dark">',
        (map '<li class="breadcrumb-item"><a href="'
            . xml_escape($self->url_for($_->[0]))
            . '">' . xml_escape($_->[1]) . '</a></li>', @crumbs),

        '<li class="breadcrumb-item active" aria-current="page">'
        . xml_escape($current) . '</li></ol></nav>';
    $self->stash(crumbs => $c);
};

my %exts = qw/
    .gz source  .msi windows  .exe windows    .zip windows
    .dmg macos  .AppImage macos   .asc sig    .txt sig
/;
helper icon_for => sub {
    my ($self, $path) = @_;
    return 'sig'   if $path =~ /\.asc$|\.txt$/;
    return 'linux' if $path =~ /linux/;
    return 'macos' if $path =~ /macos/;
    return 'win'   if $path =~ /windows/;
    $exts{($path =~ /(.[^.]+)$/)[0]//''}//''
};
helper third_party => sub {
    my ($self, $text, $url) = @_;
    q|<a data-toggle="tooltip" href="| . xml_escape($url) . q|"|
    . q| title="⚠ This package was prepared by a 3rd party,|
    . q| not the core Rakudo team"><span class="oi oi-people"></span>|
    . q| | . xml_escape($text) . q|</a>|;
};
helper contribute => sub {
    my $self = shift;
    q|<a href="| . xml_escape($self->url_for('community'))
    . q|" data-toggle="tooltip"|
    . q| title="Would you like to help us fix that? Contribute ♥"|
    . q| class="text-primary"><span class="oi oi-wrench"></span></a>|
};
helper p6 => sub { '<span class="nb">Raku</span>' };
helper nav_active => sub {
    my ($self, $nav) = @_;
    $self->url_for('current')->to_abs eq $self->url_for($nav)->to_abs
        ? ' active' : ''
};
helper news => sub { $news->all };
helper items_in => sub {
    my ($c, $what ) = @_;
    return unless defined $what;
    $what = $c->stash($what) // [] unless ref $what;
    return @$what;
};
helper latest_version => sub {
    my ($self, $product, $platform, $arch, $type, $toolchain) = @_;
    my @bins = $binaries->latest($product, $platform, $arch, $type, $toolchain);
    return $bins[0];
};

app->start;

sub post_date_to_feed_date {
    my $date = shift;
    return Time::Moment->from_string("${date}T00:00:00Z")
        ->strftime("%a, %d %b %Y %H:%M:%S %z");
}
