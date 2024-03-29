%% title: Announce: Rakudo compiler, Release #155 (2022.04)
%% date: 2022-04-24

# Announce: Rakudo compiler, Release #155 (2022.04)

On behalf of the Rakudo development team, I’m very happy to announce the
April 2022 release of Rakudo #155. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2022.04:

+ Changes:
    + Improve error when `make` encounters non-Match $/ (#4834) [2da9eb22]
      [540c7365]

+ Additions:
    + Make previous values in REPL accessible with `$*N` [190e303d][1292357d]
    + Add `INSIDE_EMACS` environment variable for better embedding of the REPL
      inside Emacs [76035de0]
    + Add an `IO::Path.dir-with-entries` method, returning a `Bool` indicating
      if the directory has any entries (without danger of resource leaking)
      [8a1e7788]
    + Implement `will complain` trait [a203a5af][2c2c5306][beeb9ffc][2baf8bc6]

+ Removals:
    + Remove the $?COMPILATION-ID constant as it was not documented and not
      tested [b2a8bfc9]

+ Efficiency:
    + Make IO::Path.mkdir 2x as fast if dir already exists [57a65562]
    + Shortcut many methods on `Empty` (returning `Empty` without needing
      to set up an iterator and a `Seq` [1b4977c6][8f5a07d0][943c443c]
      [1afc3f4f][78ca49eb]
    + Some optimizations for regex substitution [79cd9d97][55c833ad]
      [72f2f400][4503faac]
    + Micro-optimizations to make compilation of Raku code faster
      [3b692b1b][9a860ca8][9b07b66c][f6d9e90f][6736bd74][2555660b][f00fa82a]
      [a0303b18][0cb12fee][c74b1275][7c1e80c6][3187922b][5dfa9c4e][c891075f]
      [91185079][0fe48931]
    + Micro-optimizations to make module loading faster [f19d36b3][412c4625]
      [ec20a3f0][173a75b0][97ad3f79][04c8bd6b][55685572][397145a6][83bf9d26]
      [1c73cb8d][fc5ee2b0][1fd2d843]
    + Micro-optimize creation of `IO::Special` objects a bit (3x at each
      Raku startup) [3e217a0d]

+ Fixes:
    + Add mention of 'sub' potentially missing [a56d239d]
    + Revert "An object will never work if native is expected" compile-time
      error [94d4820a]
    + Only assign to caller's `$/` during a regex substitution if it's
      writable [aed27864]
    + Make sure we serialize exports [f4cba21c]
    + Ignore any dot files in "dist" directory [07b4422b]
    + Make `*CWD` initialization non-lazy, it is almost always needed and
      making it non-lazy prevents a race-condition [e9575349]
    + Don't initialize PROCESS:: variables more than once [e7143e00]
    + Protect setting loading with a lock [5dd82a62][07d3030a][d53d2da9]
    + Don't treat `!=` as a meta-op of `==` [f3b1e95d][12dd09e1]
    + Fix race condition in Rakudo::Supply::BlockState [5658f4da]
    + Fix for a lexical being localized while used in a nested scope [19c6c52f]
    + Fix typed named argument arrays not reporting type correctly [dcb0ac09]
    + Make `uniprop`/`uniprops` thread safe [2bd2ca0f]
    + Correctly check for writeable containers [90d876a3]

+ Internal:

The following people contributed to this release:

Elizabeth Mattijsen, Will "Coke" Coleda, Altai-man, Daniel Green, JJ Merelo,
Vadim Belman, Justin DeVuyst, Stefan Seifert, Patrick Böker,
Jonathan Worthington, Nick Logan, Daniel Sockwell, Will Coleda,
Antonio Juan Querol, Christian Bartolomäus, Jan-Olof Hendig, Luca Ferrari,
Richard Hainsworth, raiph, rbt

This release implements 6.c and 6.d versions of the Raku specification.
6.c version of the language is available if you use the `use v6.c`
version pragma, otherwise 6.d is the default.

Upcoming releases in 2022 will include new functionality that is not
part of 6.c or 6.d specifications, available with a lexically scoped
pragma. Our goal is to ensure that anything that is tested as part of
6.c and 6.d specifications will continue to work unchanged. There may
be incremental spec releases this year as well.

If you would like to contribute or get more information, visit
<https://raku.org>, <https://rakudo.org/community>, ask on the
<perl6-compiler@perl.org> mailing list, or ask on IRC #raku on Libera.

Additionally, we invite you to make a donation to The Perl Foundation
to sponsor Raku development: <https://donate.perlfoundation.org/>
(put “Raku Core Development Fund” in the ‘Purpose’ text field)

The next release of Rakudo (#156), is tentatively scheduled for 2022-05-27.

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
