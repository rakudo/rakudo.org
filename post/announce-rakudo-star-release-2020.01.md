%% title: Announce: Rakudo Star Release 2020.01
%% date: 2020-02-24

On behalf of the Rakudo and Raku development teams, I'm pleased to announce
the March 2019 release of "Rakudo Star", a useful and usable production
distribution of Rakudo. The tarball for this release is available from
<https://rakudo.org/downloads/star/>.

This release of Rakudo Star implements Raku v6.d. It comes with support for the
MoarVM backend (all module tests pass on supported platforms). Currently,
Rakudo Star is on a quarterly release cycle.

Please note that this release of Rakudo Star is not fully functional with the
JVM backend from the Rakudo compiler. Please use the MoarVM backend only.

We make a distinction between the language "Raku" and specific implementations
of the language such as "Rakudo".

This Star release includes release 2020.01 of [the Rakudo
compiler](https://github.com/rakudo/rakudo), and version 2020.01 of
[MoarVM](https://github.com/MoarVM/MoarVM). Additionally, it includes various
community modules, and the Raku documentation.

The Rakudo compiler changes since the last Rakudo Star release can be found in
`rakudo/docs/announce`. Specifically, in:

- 2019.07.md
- 2019.07.1.md
- 2019.11.md
- 2020.01.md

Important Rakudo bug fixes are now listed at <https://alerts.perl6.org/>

Also see the Rakudo Star errata at <https://raku.org/downloads/>

## Changes

### Added

- Perl 6 has been renamed to Raku, and this is the first Rakudo Star release
  containing `raku` as executable.

### Changed

- The `Linenoise` community module has been dropped in favour of `Readline`.
  This also got `LibraryCheck` included, as this is a dependency for
  `Readline`.

### Removed

- Support for Windows and MacOS binaries has been (temporarily) removed. We are
  eagerly looking for more people to help us out in getting quality releases
  for additional platforms!

## More information

There is an online resource at <http://perl6.org/compilers/features>
that lists the known implemented and missing features of Rakudo's
backends and other Raku implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <https://github.com/rakudo/rakudo/issues>

See <https://raku.org/> for links to much more information, including
documentation, example code, tutorials, presentations, reference materials,
design documents, and other supporting resources. Tutorials are available under
the "docs" directory in the release tarball.

The development team thanks all of the contributors and sponsors for making
Rakudo Star possible. If you would like to contribute, see
<http://rakudo.org/how-to-help>, ask on the <perl6-compiler@perl.org> mailing
list, or join us on IRC \#raku on freenode.
