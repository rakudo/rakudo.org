%% title: Announce: Rakudo compiler, Release #176 (2024.09)
%% date: 2024-09-26

On behalf of the Rakudo development team, I’m very happy to announce the
September 2024 release of Rakudo #176. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2024.09:

+ Improvements:

+ Additions:
    + [6.e] Provide `is revision-gated("6.x")` trait [c2c8d7a0][6fa7c425]

+ Fixes:

+ Deprecations:

+ Internal:
    + Use binding for all sub aliases [e1a77dc3]
    + spell out MVMROOT macro for now for compatibility [46d219b4][46d219b4]
    + set-env.ps1: Fix detecting build tools with multiple installed [c4c540eb]
    + Micro-opt for non-existing keys in hash [60dbc201]
    + Micro-opt for %h<a>:exists [dd66162a]
    + Micro-opt %h<a>:exists:p [83d7a7ff]
    + Micro-opt %h<a>:exists:kv [cc194cdc]
    + Add dedicated { }:p|kv|k|v candidates [36e8403d]
    + Micro-opt { }:delete:exists [753c7559]
    + Micro-opt { }:delete:(:p|kv) [e2288121]
    + Micro-opt { }:delete:exists:(:p|kv) [eb7a8279]
    + Micro-opt { }:delete:(k|v) [49be2cf5]
    + Remove all SLICE_ONE_HASH references in %h<key> [74b45bb3]
    + Simplify %h<a b c> handling [4646481e]
    + Micro-opt []:(k|p|kv|v) [0dd0d72e]
    + Micro-opt [x]:exists [b093bc42]
    + Micro-opt []:foo by Boolifying in the signature [50b86140]
    + Micro-opt [foo]:(p|kv|v) [86a5a10c]
    + Actually only allow concrete iterables in %h{...} [045644e0]
    + Address a small but significant corner case in the optimizer [ba303f4a]
    + Fix small breakage in the Mu:U sm optimization [fdeb87d0]
    + Add test for "not-Mu:U" ~~ Mu:U [6e182acd]
    + Remove $?FILE and $?LINE where they don't make much sense [2ee68bff]
    + Make sure we have a Bool to check against with :exists

+ RakuAST Development:
    + over 30 commits, 142/153 (make test), and 1158/1355 (make spectest)
      [778c7a63][65c318f0][9ffadf80][7c3b2b18][1081b051][c612b32b][59257a4b]
      [7857b802][ed5c906c][1fda647f][0c9a00ad][a27ae5ed][3e2684a4][a383c8bb]
      [307efa6d][cd0e6ee6][81d43af6][38fa6c48][a8111db8][a260251b][07c8b119]
      [d0a70281][4ccbad96][7ddaf755][850a5a71][5032aad2][fb7d3e7f][6888e977]
      [866eec37][dde75687][27565cc1][8162f3eb][8eef4c79]

The following people contributed to this release:

Elizabeth Mattijsen, Stefan Seifert, Justin DeVuyst, Timo Paulssen, ab5tract,
Daniel Green, Will Coleda, Luc St-Louis, Patrick Böker, Nick Logan

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

The next release of Rakudo (#177), is tentatively scheduled for 2024-10-24.

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
