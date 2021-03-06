%% title: Announce: Rakudo Star Release 2017.04
%% date: 2017-05-01

A useful and usable production distribution of Perl 6

On behalf of the Rakudo and Perl 6 development teams, I'm pleased to announce the April 2017 release of "Rakudo Star", a useful and usable production distribution of Perl 6. The tarball for the April 2017 release is available from <a href="https://rakudo.perl6.org/downloads/star/">https://rakudo.perl6.org/downloads/star/</a>.

Binaries for macOS and Windows (64 bit) are also available.

This is the seventh post-Christmas (production) release of Rakudo Star and implements Perl v6.c. It comes with support for the MoarVM backend (all module tests pass on supported platforms).

This release includes "zef" as module installer. "panda" is to be shortly replaced by "zef" and will be removed in the near future.

It's hoped to produce quarterly Rakudo Star releases during 2017 with 2017.07 (July) and 2017.10 (October) to follow.

Please note that this release of Rakudo Star is not fully functional with the JVM backend from the Rakudo compiler. Please use the MoarVM backend only.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".

This Star release includes [release 2017.04.3] of the Rakudo Perl 6 compiler, version 2017.04-53-g66c6dda of MoarVM, plus various modules, documentation, and other resources collected from the Perl 6 community.

The Rakudo compiler changes since the last Rakudo Star release of 2017.01 are now listed in "2017.02.md" and "2017.04.md" under the "rakudo/docs/announce" directory of the source distribution.

In particular this release featured many important improvements to the IO subsystem thanks to Zoffix and the support of the Perl Foundation.

Please see
Part 1: <a href="http://rakudo.org/2017/04/02/upgrade">http://rakudo.org/2017/04/02/upgrade</a>
Part 2: <a href="http://rakudo.org/2017/04/03/part-2">http://rakudo.org/2017/04/03/part-2</a>
Part 3: <a href="http://rakudo.org/2017/04/17/final-notes">http://rakudo.org/2017/04/17/final-notes</a>

Note there were point releases of 2017.04 so also see "2017.04.1.md", "2017.04.2.md" and "2017.04.3.md".

Notable changes in modules shipped with Rakudo Star:

+ DBIish: New version with pg-consume-input
+ doc: Too many to list. Large number of "IO Grant" doc changes.
+ json\_fast: Too many to list. Big performance improvements.
+ perl6-lwp-simple: Fix for lexical require and incorrect regex for absolute URL matcher
+ test-mock: Enable concurrent use of mock objects
+ uri: Encoding fixes
+ zef: Too many to list. IO fixage.

There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases. Some of the not-quite-there features include:

+ advanced macros
+ non-blocking I/O (in progress)
+ some bits of Synopsis 9 and 11
+ There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo's backends and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at rakudobug@perl.org.

See <a href="https://perl6.org/">https://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, presentations, reference materials, design documents, and other supporting resources. Some Perl 6 tutorials are available under the "docs" directory in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the perl6-compiler@perl.org mailing list, or join us on IRC #perl6 on freenode.