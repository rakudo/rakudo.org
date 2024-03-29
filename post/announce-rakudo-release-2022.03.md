%% title: Announce: Rakudo compiler, Release #154 (2022.03)
%% date: 2022-03-20

# Announce: Rakudo compiler, Release #154 (2022.03)

On behalf of the Rakudo development team, I’m very happy to announce the
March 2022 release of Rakudo #154. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2022.03:

+ Deprecations:

+ Additions:
    + Expose the `.file` and `.line` methods on `Label` objects [028828ac]
    + Allow `Date` / `DateTime` *day* parameter to be a `Callable` /
      `Whatever` allowing e.g. Date.new(2022,3,*) for the last date in
      March 2022. (#4808) [37756433]
    + Make sure tools/install-dist.p6 is also available as .raku [6ddf7529]

+ Removals:

+ Changes:
    + Make error on `Date.later(:hour|minute|second)` more awesome [7f00f798]
    + Give `.chomp` the possibility to specify a needle (#4739) [cccc3e8c]
    + Improve error message for invalid arguments passed to traits [eb151d53]
    + Test should work with any default version of the language [9425d0fa]

+ Fixes:
    + Un =my= `X::Comp::Group` [74cca333]
    + Turn junctions into value objects [cc3ed94b]
    + Fix a bug with gist over `Junction` keys [df09bef0]
    + Fix classification and categorization over junctions [c50f51f9]
    + Fix typo'd missing : in .nominal_type signature (#4788) [59dcca66]
    + Decrement # of calls in a block if any are optimized away [4d19c236]
    + Fix [native array `.repeated` / `.unique`] issues on JVM backend [b46fed9c]
    + Fix `IO::Path.parent` [4ef9426f][e53716aa]
    + Fix multi-method candidates lost when 6.e role is applied [6b58cc03]
    + Workaround for cases where `.ACCEPTS` may return non-Raku object [f1f5d5cd]
    + Fix issue with native array.splice [blin] [63830142]
    + Fix issue with `Net::Curl` [blin] [6d04cc39]
    + Make `DateTime.new(Allomorph:D)` work [60603bac]
    + Restore `given` / `when` optimization for `Numeric` cases [986b1df4]
    + Fix/test `Pod::To::Text` rendering of `=defn` elements (#4803) [ca2d1d6c]
    + Remove erroneous early exit from install-dist.raku [edb8a200]
    + Fix resources of the parent repo not found when using Staging [07d580bc]

+ Internal:
    + Optimize more cases of p6decontrv ops (#4793) [2ed88523]
    + Use new native unsigned integer NQP ops where applicable [ceaa38fc]
      [4d61a582][28a734d1][548c2550][167c2394][72b9e1c2][e000840d][88386a09]
      [3e89b30a][96cbc2be][f807186e][de9eeeb2][a71ec345][7c5595e2][a965cdcb]
      [771655b0][5c8a2cf7]
    + Generate the SignedBlob/UnsignedBlob roles [65507b89][7870b446][4677dcb7]
      [fb25bd4e]
    + Use --/++$i instead of $i = nqp::add/sub_i($i,1) for readability, as
      this is no longer needed for performance [5caf7aaf][648d02a1][0fac2da8]
      [db277ae2][11494f98][e06e32ef][2dfc69e2][3b64a627][81099326][a6019d51]
      [2bf84660][c92b44ec][af7c1c32][8077ebd3][6513988b][b79e9ba5][802a4737]
      [8529cc97][a236d438][08dcab8d][c1345c57][c7231cd7][bd722aba][473e903a]
      [f8e69321]
    + Streamline the Blob/Buf generated code a bit [6a21196c][6230645a]
    + Generate the sorting logic for native arrays [64c7dfa1]
    + Make Complex multiplication factor constant [7bc572e7]
    + Streamline Complex -> Real coercion [e3b836a5]
    + Simplify creating a Complex object [967a130f]
    + Enable num->str coercion in native.repeated/unique [979cc607]
    + Remove unneeded/confusing can('prec') checks [232a55b9]
    + Remove some unnecessary `try`s (#4773) [0949d67c]
    + Stop telling users to avoid mimalloc [200579f7]
    + CURS simplifications (use TWEAK over BUILD, remove .name) [3f10f7da]

The following people contributed to this release:

Elizabeth Mattijsen, Daniel Green, Stefan Seifert, Daniel Sockwell,
Patrick Böker, Vadim Belman, Will "Coke" Coleda, Justin DeVuyst,
Christian Bartolomäus, David Warring, Mathias Reitinger, Steve Dondley

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

The next release of Rakudo (#155), is tentatively scheduled for 2022-04-22.

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
