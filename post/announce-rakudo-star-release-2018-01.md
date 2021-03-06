%% title: Announce: Rakudo Star Release 2018.01
%% date: 2018-01-29

On behalf of the Rakudo and Perl 6 development teams, I'm pleased to
announce the January 2018 release of "Rakudo Star", a useful and
usable production distribution of Rakudo Perl 6. The tarball for this
release is available from <a href="https://rakudo.perl6.org/downloads/star/">https://rakudo.perl6.org/downloads/star/</a>.

Binaries for macOS and Windows (64 bit) will shortly be available at
the same location.

This is a post-Christmas (production) release of Rakudo Star and
implements Perl v6.c. It comes with support for the MoarVM backend
(all module tests pass on supported platforms). Currently, Star is on
a quarterly release cycle.

Please note that this release of Rakudo Star is not fully functional
with the JVM backend from the Rakudo compiler. Please use the MoarVM
backend only.

In the Perl 6 world, we make a distinction between the language ("Perl
6") and specific implementations of the language such as "Rakudo Perl
6".

This Star release includes release 2018.01 of the Rakudo Perl 6
compiler, version 2018.01 MoarVM, plus various modules, documentation,
and other resources collected from the Perl 6 community.

The Rakudo compiler changes since the last Rakudo Star release of
2017.10 are now listed in "2017.11.md", "2017.12.md", and "2018.01.md"
under the "rakudo/docs/announce" directory of the source distribution.

Important Rakudo bug fixes are now listed at [Perl 6 Alerts]:
<a href="https://alerts.perl6.org/">https://alerts.perl6.org/</a>

Deprecation:

+ "panda" has been removed from releases after 2017.10 since it is
deprecated. Please use "zef".
+ LWP::Simple is deprecated and will be removed. Please use "HTTP::UserAgent".

Notable changes in modules shipped with Rakudo Star:

+ JSON-Class: Alter the way in which the re-exporting of the traits works
+ JSON-Marshal: Fix for associative and positional type objects
+ Pod-To-HTML: Document P6DOC_DEBUG
+ datetime-parse: New. Dependency of http-useragent
+ doc: Too many to list.
+ http-useragent: New. Intended as replacement for LWP::Simple (now deprecated)
+ json_fast: fix off-by-one in treacherous escape detection
+ perl6-lwp-simple: HTML header names with mixed case fix
+ svg: Fix example in README
+ tap-harness6: Make TAP parsing loose by default before rakudo
2017.09 in prove too
+ zef: Warns about missing META6.json. Sort "list" output.

There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:

+ advanced macros
+ some bits of Synopsis 9 and 11


There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo's
backends and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at rakudobug@perl.org.

See <a href="https://perl6.org/">https://perl6.org/</a> for links to much more information about Perl
6, including documentation, example code, tutorials, presentations,
reference materials, design documents, and other supporting resources.
Some Perl 6 tutorials are available under the "docs" directory in the
release tarball.

The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see
<a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the perl6-compiler@perl.org
mailing list, or join us on IRC #perl6 on freenode.
