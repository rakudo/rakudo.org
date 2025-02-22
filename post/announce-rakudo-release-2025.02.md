%% title: Announce: Rakudo compiler, Release #180 (2025.02)
%% date: 2025-02-22

On behalf of the Rakudo development team, I’m very happy to announce the
February 2025 release of Rakudo #180. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2025.02:

+ Improvements:
    + Make iterating Map/Hash ~1% faster [0a708114]
    + Make Map|Hash.new( a => 42, b => 666) more DWIM [ddf07343]
    + Make Instant.DateTime timezone aware in 6.e [e4157a41]
    + Properly revision gate Date.DateTime [80c21053]
    + Make Int.uniname return Failure on unassigned in 6.e [3b8e5094]
    + Allow heredocs in the REPL [f8556044]
    + Make Blob ~ Blobx take lefthand type in 6.e [abb92d96]
    + Handle Associative.deepmap better wrt Empty [6e982323][ab09c6d1]

+ Additions:
    + Introduce Hash::Ordered [1faf1148]
    + Add support for 0 in .rotor [2ab1e918]

+ Fixes:
    + Make Hash.clone actually clone itself [6be81c7c]
    + Make Hash/Map.clone multis [ce58f97d]
    + Make Array.clone actually clone itself [4c7f00ba][997ca6a4][45ae5b94]
    + Make sure cloning a Date works for subclasses [4b95276c]
    + Fix issue with Date.today and Date.clone [6aa68f98]
    + Make DateTime.clone do the right thing for subclasses/mixedins [b1ce6561]
    + A group of fixes and improvements for metaops related to #1705 [2a70fa43]
      [27d1ee7f][c890ea59][399fea1d][88050372][b7f47a2a][ba2431f4][dbc7bfc8]
      [9bcb01e9][b2198d9e][1aea298d]
    + Give Hash.clone the same semantics as Array.clone [4f8cfb12]
    + Give Hash::Object.clone the same semantics as Array.clone [72e2dcd1]
    + Throw coercion failures on object hashes [9ece34b2]
    + Native array .head/.first/.tail are left values [de08b4c6]
    + Make $() work properly on scalar values [553bd756][a6608c21]
    + Make sure result of >>foo<< is stored correctly [ad18ca9f]
    + Make sure that .deepmap returns the right structure [a6d76f8c]
    + Handle single param to named array args better in MAIN [4a63e5c3]
    + Fix multi-dim array slices with lazy indices in 6.e [c151ca37]
    + Make Range.Numeric a bit smarter wrt infinity [90312db3]
    + Revert "Don't allow \c[] with multiple graphemes in regex" [0bfbf5fa]

+ Deprecations:
    + Deprecate IO subs that operate on multiple paths in 6.e [cd34688a]

+ Internal:
    + Simplify Mu.clone [39c48a17]
    + Remove SET-DAYCOUNT private method [19d53f53]
    + Lose Positional argument to BUILDALL [ea1831c7]
    + Simplify Supplier creation [b971e443]
    + Use POPULATE interface for Backtrace::Frame [a605fed9]
    + Use POPULATE interface on MoarVM::Profiler [2735e95f]
    + Simplify Hash/Map.new [e6f0771a]
    + Remove now unnecessary .item methods [e34b767f]
    + Add shortcut for (1,2,3).are(Mu) [248f02ba]
    + Use a local for a somewhat hot class member access [02c43edc]
    + More locals instead of class members [99500a5d]
    + Mark '.samespace' method as an implementation-detail [ef60266a]
    + Word wrap class implementation detail message [45b36fa0]

+ RakuAST Development:
    + 60 commits, 142/153 (make test), and 1189/1355 (make spectest)
      [c26e7af3][a9bce4d5][d77a3bd9][9a96e8b2][e1b9fd83][66de0b44][50d8725a]
      [1a56f5b2][d2ad724f][19770e45][77631d9b][99433304][045c280f][a440fb84]
      [5712c53e][91e767b2][d244790b][8e095d04][318b1231][5cdf9056][874250cd]
      [0da7a67d][f00e5edf][cd2ed227][6922f88f][204a8379][698c5861][174729f9]
      [138ba249][cb109349][4e919342][a85cc7a4][5a90058e][c02df2df][ca07de87]
      [138ec396][14a9bd0a][4d37905d][a56f1b57][8835a438][a0579b9b][65b2056e]
      [60a2d44b][1aa763f0][8ead6206][7daa644a][10040b98][5807369f][8b60dc26]
      [243e2939][f5e82265][fc3fca45][62b8a649][1665ac0f][cd0fd56d][83694c05]
      [1f8f25f0][b6447578][4e811d55][1a6fe31c]

The following people contributed to this release:

Elizabeth Mattijsen, Stefan Seifert, Will Coleda, Daniel Green,
Timo Paulssen, Justin DeVuyst, Nick Logan, Coleman McFarland, Duncan Holm,
Richard Hainsworth, Tim Nelson, Tom Browder

This release implements 6.c and 6.d versions of the Raku specification.
6.c version of the language is available if you use the `use v6.c`
version pragma, otherwise 6.d is the default.

Upcoming releases in 2025 will include new functionality that is not
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

The next release of Rakudo (#181), is tentatively scheduled for 2025-03-22.

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
