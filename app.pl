#!/usr/bin/env perl

use lib qw<lib>;
use File::Spec::Functions qw/catfile/;
use Mojolicious::Lite;
use Mojo::File qw/path/;
use Mojo::Util qw/trim  xml_escape/;
use Time::Moment;
use RakudoOrg::Posts;
use Perl6Org::Binaries;

plugin Config => { file => 'conf.conf' };

my $posts    = RakudoOrg::Posts->new;
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
get '/posts' => sub {
    my $self = shift;
    $self->stash(posts => $posts->all);
};
get '/post/#post' => sub {
    my $c = shift;
    my ($meta, $html) = $posts->load($c->param('post'));
    $html or return $c->reply->not_found;

    $c->stash(%$meta, post => $html, title => $meta->{title});
} => 'post';

get $_ for qw{/about /files /docs /star /bugs /people};


### FILES ROUTES
get '/star/windows'             => 'star-windows';
get '/star/macos'               => 'star-macos';
get '/star/source'              => 'star-source';
get '/star/third-party'         => 'star-third-party';
get '/files/rakudo/third-party' => 'files-rakudo-third-party';
get '/files/rakudo/source'      => 'files-rakudo-source';

get '/files' => sub {
    my $self = shift;
} => 'files';

get '/files/star' => sub {
    my $self = shift;
    $self->stash(vers => $binaries->all('star'));
} => 'files-star';
get '/files/rakudo' => sub {
    my $self = shift;
    $self->stash(
        rakudo_vers => $binaries->all('rakudo'),
        nqp_vers    => $binaries->all('nqp')
    );
} => 'files-rakudo';

get '/latest/:product/:os' => sub {
    my $self = shift;
    my $bin = $binaries->latest($self->stash('product'), $self->stash('os'))
        or return $self->reply->not_found;

    $self->res->headers->content_type('application/octet-stream');
    $self->res->headers->content_disposition(
        'attachment; filename="' . $bin->bin . '"'
    );
    $self->reply->static($bin->path);
} => 'latest';

get '/dl/:product/*bin' => sub {
    my $self = shift;
    my $bin = $binaries->bin($self->stash('product'), $self->stash('bin'))
        or return $self->reply->not_found;

    if ($bin->ext =~ /\.(?:txt|asc)/) {
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

### </FILES ROUTES>

get '/people/irc' => sub {
    shift->redirect_to('https://webchat.freenode.net/?channels=#raku');
} => 'people-irc';
get '/people/irc-dev' => sub {
    shift->redirect_to('https://webchat.freenode.net/?channels=#raku-dev');
} => 'people-irc-dev';

any $_ => sub {
    my $c = shift;
    my $posts = [ map +{ %$_ }, @{ $posts->all } ];
    $_->{date} = blog_date_to_feed_date($_->{date}) for @$posts;

    my $blog_last_updated_date = $posts->[0]{date};
    $c->stash(
        posts       => $posts,
        last_update => $blog_last_updated_date,
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
    .gz source  .msi windows  .exe windows
    .dmg macos  .AppImage macos   .asc sig    .txt sig
/;
helper icon_for => sub {
    my ($self, $path) = @_;
    $exts{($path =~ /(.[^.]+)$/)[0]//''}//''
};
helper third_party => sub {
    my ($self, $text, $url) = @_;
    q|<a data-toggle="tooltip" href="| . xml_escape($url) . q|"|
    . q| title="⚠ This package was prepared by a 3rd party,|
    . q| not the core Rakudo team"><span class="oi oi-people"></span>|
    . q| | . xml_escape($text) . q|</a>|;
},
helper contribute => sub {
    my $self = shift;
    q|<a href="| . xml_escape($self->url_for('people'))
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
helper posts => sub { $posts->all };
helper items_in => sub {
        my ($c, $what ) = @_;
        return unless defined $what;
        $what = $c->stash($what) // [] unless ref $what;
        return @$what;
    };

app->start;

sub blog_date_to_feed_date {
    my $date = shift;
    return Time::Moment->from_string("${date}T00:00:00Z")
        ->strftime("%a, %d %b %Y %H:%M:%S %z");
}
