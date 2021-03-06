%% title: Rakudo Star 2012.05 released
%% date: 2012-05-23

Announce: Rakudo Star - a useful, usable, "early adopter" distribution of Perl 6

On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the May 2012 release of "Rakudo Star", a useful and
usable distribution of Perl 6.  The tarball for the May 2012
release is available from http://github.com/rakudo/star/downloads.

In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl".  This Star release includes release 2012.05 [0] of the
Rakudo Perl 6 compiler [1], version 4.4 of the Parrot Virtual
Machine [2], and various modules, documentation, and other
resources collected from the Perl 6 community.

Here are some of the major improvements in this release over the
previous distribution release.

* -I and -M command-line options
* support for non-Int enums
* 'use' now accepts positional arguments and is able to import by tag name
* 'import' now works
* basic support for Version literals
* %*ENV now propagates into subprocesses
* basic implementation of pack and unpack ported from 'ng' branch
* fff flip-flop operator is now implemented, ff has been improved
* various new regex features and improvements

Rakudo now also includes the lib.pm module.

This release also contains a range of bug fixes, improvements to error
reporting and better failure modes. More exceptions are thrown
as typed exceptions.

There are some key features of Perl 6 that Rakudo Star does not
yet handle appropriately, although they will appear in upcoming
releases.  Some of the not-quite-there features include:

  * macros
  * threads and concurrency
  * Unicode strings at levels other than codepoints
  * interactive readline that understands Unicode
  * non-blocking I/O
  * much of Synopsis 9

There is a new online resource at http://perl6.org/compilers/features
that lists the known implemented and missing features of Rakudo Star
2012.05 and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are
many that we've missed.  Bug reports about missing and broken
features are welcomed at rakudobug@perl.org.

See http://perl6.org/ for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources.
An updated draft of a Perl 6 book is available as
docs/UsingPerl6-draft.pdf in the release tarball.

The development team thanks all of the contributors and sponsors
for making Rakudo Star possible.  If you would like to contribute,
see http://rakudo.org/how-to-help, ask on the perl6-compiler@perl.org
mailing list, or join us on IRC #perl6 on freenode.

[0] https://github.com/rakudo/rakudo/blob/master/docs/announce/2012.05
[1] http://github.com/rakudo/rakudo
[2] http://parrot.org/
