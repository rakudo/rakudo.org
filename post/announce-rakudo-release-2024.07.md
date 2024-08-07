%% title:  Announce: Rakudo compiler, Release #174 (2024.07)
%% date: 2024-07-25

On behalf of the Rakudo development team, I’m very happy to announce the
July 2024 release of Rakudo #174. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2024.07:

+ Improvements:
    + Improve execution speed by about 5% on Intel hardware and the MoarVM
      backend by disabling the EXPRession JIT by default [4d3723bd]

+ Additions:
    + Add :hammer named argument to .flat for thorough flattening [74cfe8e3]

+ Fixes:
    + Bump NQP to get fix for return from LEAVE phaser on MoarVM [0554ae9e]
    + Partially fix mixed bin/no bin reads in IO::Socket [5008807b]
    + Fix sprintf thinko in BUILDPLAN module [6536e756]

+ Deprecations:

+ Internal:
    + Change colabti log links to irclogs.raku.org links [3e4d19bb]
    + Remove the signature check from .duckmap for now [1bd985a3]

+ RakuAST Development:
    + Added Raku grammar based syntax highlighting API, and basic support
      for highlighting using ANSI color codes
    + over 60 commits, 144/153 (make test), and 1065/1356 (make spectest)
      [4085432e][3e55eb62][17f0148a][02526784][fd72fc3e][692677ff][ea6c68ab]
      [604d6617][8752d081][e0afa0a8][a7b41f73][31336240][c7af1953][f8b56432]
      [9d959fae][5795560f][cf3f0aa2][a14a94df][d782d8b0][17f89c6f][d57b4109]
      [267edeb1][c50e477c][7a0c0e3f][b984ddfb][1534733d][c64dc9f4][39b987ab]
      [9fc5f662][5a431ad4][133a25a2][115fdee2][6b9a163e][59fb9ebc][ca479813]
      [552a88ba][b09a5ee8][38ba882a][8e00a517][527b9788][3ab6c96b][509ee1b6]
      [8a138038][3079f914][c56375da][f8e64356][4dae7e5b][55754f8d][015e4a3b]
      [ff48e039][dcaf53e6][487f1eda][f84ae43b][2144863d][fab5c99a][f4b4b219]
      [e622928d][a469bd8d][19bd06b5][16b059c0][62e523a9][2992649f][088180b6]
      [d7731e7d][1004a2ad][26622f63]

The following people contributed to this release:

Elizabeth Mattijsen, Will Coleda, Daniel Green, Justin DeVuyst,
Patrick Böker, librasteve, Richard Hainsworth, Stefan Seifert, Tim Nelson

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

The next release of Rakudo (#175), is tentatively scheduled for 2024-08-29.

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
