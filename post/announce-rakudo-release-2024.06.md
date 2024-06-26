%% title: Announce: Rakudo compiler, Release #173 (2024.06)
%% date: 2024-06-27

On behalf of the Rakudo development team, I’m very happy to announce the
June 2024 release of Rakudo #173. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2024.06:

+ Improvements:
    + Use inclusive TPF alias. [271f8320]
    + Give `Seq` some `.head` shortcuts (prevents unnecessary reifying) [07865140]
    + Check expectations of `.deepmap` / `.duckmap` / `.nodemap` [18d128ab]
    + Make `Seq.end` return a proper `Failure` [bea61881]

+ Additions:

+ Fixes:
    + Make sure the `LAST` phaser is always fired in `.map` [16ce594e]
    + Don't bother calling op in `.duckmap` on sig failure [af6df816]
    + Fix regresssion on `NativeCall::Compiler::MSVC`, introduced in 2024.05 [cc52ff12]
    + Don't set the `FIRST` flag always when iterating (fix and micro-optimization) [ad0afb04]

+ Deprecations:

+ Internal:
    + Micro-optimize .head(N) [141228a3]

+ RakuAST Development:
    + 20 commits, 144/153 (make test), and 1063/1356 (make spectest) [3f804996]
      [9c53c92e][1ddbcbc1][5c10672c][16d126bc][ffc59e46][0cde5bfc][0b937b15]
      [946ab902][c99d4369][1a61ed02][587cd72f][e2fa55b9][46511d59][49751627]
      [a51ee10d][5b44a64b][b2f81c23][5dd0ad6f][093009a0]

The following people contributed to this release:

Elizabeth Mattijsen, Will Coleda, Daniel Green, Richard Hainsworth, ab5tract,
Justin DeVuyst, Patrick Böker, Tom Browder, voldenet

This release implements 6.c and 6.d versions of the Raku specification.
6.c version of the language is available if you use the `use v6.c`
version pragma, otherwise 6.d is the default.

Upcoming releases in 2024 will include new functionality that is not
part of 6.c or 6.d specifications, available with a lexically scoped
pragma. Our goal is to ensure that anything that is tested as part of
6.c and 6.d specifications will continue to work unchanged. There may
be incremental spec releases this year as well.

If you would like to contribute or get more information, visit
<https://raku.org>, <https://rakudo.org/community>, ask on the
<perl6-compiler@perl.org> mailing list, or ask on IRC #raku on Libera.

Additionally, we invite you to make a donation to The Perl & Raku Foundation
to sponsor Raku development: <https://donate.perlfoundation.org/>
(put “Raku Core Development Fund” in the ‘Purpose’ text field)

The next release of Rakudo (#174), is tentatively scheduled for 2024-07-25.

A list of the other planned release dates is available in the
“docs/release_guide.pod” file.

The development team appreciates feedback! If you’re using Rakudo, do
get back to us. Questions, comments, suggestions for improvements, cool
discoveries, incredible hacks, or any other feedback – get in touch with
us through (the above-mentioned) mailing list or IRC channel. Enjoy!

Please note that recent releases have known issues running on the JVM.
We are working to get the JVM backend working again but do not yet have
an estimated delivery date.

[^1]: See <https://raku.org/>
