package RakudoOrg::News;

use base 'Mojo::Base';

use Text::MultiMarkdown qw/markdown/;
use File::Glob qw/bsd_glob/;
use POSIX qw/strftime/;
use Mojo::File qw/path/;
use Mojo::Util qw/decode  encode  xml_escape/;
use Mojo::DOM;
use utf8;

sub all {
    my @posts = bsd_glob 'post/*.md';
    s/\.md$// for @posts;
    my @return;
    for (@posts) {
        my ($meta) = process(decode 'UTF-8', path("$_.md")->slurp);
        next if $meta->{draft};
        push @return, {
            date  => $meta->{date},
            title => $meta->{title},
            archived => (
                ($meta->{date}
                    cmp strftime "%Y-%m", localtime time-60*60*24*365*1.5
                ) == -1),
            post  => (substr $_, length 'post/'),
       };
    }
    return [ sort { $b->{date} cmp $a->{date} } @return ];
}

sub load {
    my ($self, $post) = @_;
    my $post_file = "post/$post.md";
    return unless -f $post_file and -r _;
    my ($meta, $content) = process(decode 'UTF-8', path($post_file)->slurp);
    my $html = Mojo::DOM->new(markdown $content);
    $html->find('ul,ol')->each(sub { $_->{class} = 'flush-list' });
    return $meta, $html;
}

sub process {
    my $post = shift;
    my %meta;
    $meta{$1} = $2 while $post =~ s/^%%\s*(\w+)\s*:\s*([^\n]+)\n//;
    $post =~ s/^```$//gm;
    $meta{title} =~ s/^Announce://;
    return \%meta, $post;
}

1;
