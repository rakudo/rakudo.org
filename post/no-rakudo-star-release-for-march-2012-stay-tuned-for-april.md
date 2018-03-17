%% title: No Rakudo Star release for March 2012, stay tuned for April
%% date: 2012-04-05

Some of our users have asked what happened to the Rakudo Star release that was planned for March 2012. The short answer is that it didn't happen.

The long answer is that compiler release for March 2012 include <a href="http://6guts.wordpress.com/2012/03/09/meta-programming-slides-and-some-rakudo-news/">"bounded serialization", a technique that drastically reduces startup time</a>. Unfortunately it also causes a regression that stops the calling of C functions under cetain conditions.

We have noticed that too late, and decided not to base a Star distribution release on the new compiler release. We hope to fix the regression in time for the April release.

So if everything goes as planned, the April release of Rakudo star will have greatly reduced startup time, many new compiler features and the newly fixed modules <a href="https://github.com/ihrd/uri/">URI</a> and <a href="https://github.com/cosimo/perl6-lwp-simple/">LWP::Simple</a>.

We also hope to get some more cool stuff done at the <a href="https://gist.github.com/1711730">Perl 6 Patterns Hackathon in Oslo</a>, maybe <a href="http://perlgeek.de/blog-en/perl-6/2012-upcoming-p6-hackathon.html">improved database access</a>.
