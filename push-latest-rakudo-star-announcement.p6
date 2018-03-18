#!/usr/bin/env perl6

use WWW;
sub MAIN ($ver where / ^ \d**4 \. \d**2 [\. \d**{1..2}]? $/ ) {
    my $url = 'https://raw.githubusercontent.com/'
        ~ "rakudo/star/master/docs/announce/$ver.md";
    my @lines = lines get $url;
    my $url_ver = @lines.shift.words.tail;
    $url_ver eq $ver or die "Version `$url_ver` in announcement from `$url`"
        ~ " does not match given version `$ver`";

    @lines.shift xx 2;
    my $file = "post/announce-rakudo-star-release-$ver.subst(:g, '.', '-').md";
    $file.IO.spurt:
        join "\n", "%% title: Announce: Rakudo Star Release $ver",
                   "%% date: {Date.today}", |@lines;

    run «git add -- "$file"»;
    run «git commit -m "Add announcement for $ver release"»;
    run «git push»;
}