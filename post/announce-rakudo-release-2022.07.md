%% title: Announce: Rakudo compiler, Release #157 (2022.07)
%% date: 2022-07-31

# Announce: Rakudo compiler, Release #157 (2022.07)

On behalf of the Rakudo development team, I’m very happy to announce the
July 2022 release of Rakudo #157. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2022.07:

+ Changes:
    + Re-imagine DateTime.new(Str) / Str.DateTime [aa462b41]
    + Make sort() a runtime error [0c9169dc]
    + Implement coercion via new-disp and re-consider return typechecking
      dispatcher [7774c331][4ab61720][efd610cb][b4a26fbe][3e45f709][6c3cb859]
      [f448ac47][a9606b29]
    + Make Iterable.hyper|race take Any as a default for :batch and :degree
      [d73d035e]

+ Additions:
    + Implement fallback support for MRO [1128d5cf][83197e34][9710a85e]
    + Add IO::Path inode, dev, and devtype methods [5c4970c5][599a6362]
      [6dc2f92c]
    + Add sub version of .head / .skip / .tail [af31b1df]
    + Implement Haskell's "span" as "snip" in 6.e [16ccb573]

+ Removals:

+ Efficiency:
    + Add native sub versions for .elems and .end (up to 4x speedup) [4fedb6f0]
    + Make coercions up to 1.6x as fast [5a8aa66b]
    + Add candidates for sub substr(str,int,int) for up to 2.8x speedup
      [09ead96e]

+ Fixes:
    + Fix cases where we try calling methods on BOOTCode [4130846b]
    + Make PostionalBindFailover.iterator die [dd7f3eb9]
    + Fix subclasses of .Date(Time) coercion [1a7b4b1b]
    + Revert relaxation of positional bind failover binding [bb944723]
    + Fix an LTA error message on passing Seq to a List parameter [db13e402]
    + Fix copy-pasto in error message for native unsigned ints [ffdeecd1]
    + Add missing private error handling method in Buf[32a40791]
    + Consider Positional/Associative type parameters in optional defaults
      [7148da1c]
    + Fix a deep recursion issue in return typecheck dispatcher [9fa76ec6]
      [808b0768]
    + Fix a regression where coercing into a role didn't work [0e09a287]
    + Implement lazy 'handles' trait application for methods [6430d41d]
    + Get around a problem where a module duplicates method objects [324adc5a]
    + Fix lone "-" in MAIN handling with :named-anywhere [3d3966b0]
    + Add ACCEPTS method for DateTime [31779f47][621d69e0]
    + Fix some cases of coercion over containerized values [fbe3acd0]
      [02f32d51]
    + Make code object based delegation 6.e feature [c6c8dfee]

+ Internal:
    + Micro-opt on CoercionHOW.typecheck [41e07ab9]
    + Make coercion more easily inlineable [eceea95c]
    + Simplify $has_varname setting [378a89e6]
    + Simplify native value / container check in binder [750487c6]
    + Further simplify native binding check [fc149e22]
    + Streamline native match check [a2f92b2b]
    + Ternearize lexpad binding of natives [f2546b44]

The following people contributed to this release:

Vadim Belman, Elizabeth Mattijsen, Justin DeVuyst, Will "Coke" Coleda,
Timo Paulssen, Jonathan Worthington, Luis F. Uceta, Clifton Wood,
Juan Julián Merelo Guervós, Stefan Seifert, Vladimír Marek, rir

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

The next release of Rakudo (#158), is tentatively scheduled for 2022-08-26.

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
