%% title: Announce: Rakudo Star 2012.04
%% date: 2012-04-26

On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the April 2012 release of "Rakudo Star", a useful and
usable distribution of Perl 6. The tarball for the April 2012
release is available from <a href="https://github.com/rakudo/star/downloads">github</a>.

In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes release 2012.04.1 [0] of the
Rakudo Perl 6 compiler [1], version 4.3 of the Parrot Virtual
Machine [2], and various modules, documentation, and other
resources collected from the Perl 6 community.

Here are some of the major improvements in this release over the
previous distribution release.

* much improved startup time

* much more robust module precompilation

* autovivification for arrays and hashes is implemented again

* many phasers like PRE, POST and REDO are now implemented

* improved support for calling C functions and modelling structs and arrays
via NativeCall.pm6

* now includes modules URI, LWP::Simple, jsonrpc and Bailador (a Perl 6 port
of Dancer)

This release also contains a range of bug fixes, improvements to error
reporting and better failure modes. Many more exceptions are thrown
as typed exceptions.

Some notable incompatible changes from the previous release include

* the 'lib' directory is not included in the default module search path
anymore. You can manipulate the search path with the PERL6LIB environment
variable

* 'defined' used to be a prefix operator, and is now a regular subroutine.
This means you must updated code that relies 'defined' taking only one
argument. For example 'defined $x ?? $a !! $b' should be written as
'$x.defined ?? $a !! $b' or 'defined($x) ?? $a !! $b'.

There are some key features of Perl 6 that Rakudo Star does not
yet handle appropriately, although they will appear in upcoming
releases. Some of the not-quite-there features include:
* pack and unpack
* macros
* threads and concurrency
* Unicode strings at levels other than codepoints
* interactive readline that understands Unicode
* non-blocking I/O
* much of Synopsis 9

There is a new online resource at http://perl6.org/compilers/features
that lists the known implemented and missing features of Rakudo Star
2012.04 and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are
many that we've missed. Bug reports about missing and broken
features are welcomed at.

See http://perl6.org/ for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources.
An updated draft of a Perl 6 book is available as
in the release tarball.

The development team thanks all of the contributors and sponsors
for making Rakudo Star possible. If you would like to contribute,
see , ask on the perl6-compiler@perl.org
mailing list, or join us on IRC #perl6 on freenode.

[0] https://github.com/rakudo/rakudo/blob/master/docs/announce/2012.04.1
[1] http://github.com/rakudo/rakudo
[2] http://parrot.org/