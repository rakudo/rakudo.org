%% title: Announce: Rakudo compiler, Release #147 (2021.06)
%% date: 2021-06-19

On behalf of the Rakudo development team, I’m very happy to announce the
June 2021 release of Rakudo #147. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2021.06:

  + Additions:
    + Support generics with consumption and inheritance in roles [4b996568][6e1cfe4c]
    + Introduce `done foo` syntax as a shortcut for `emit foo; done` [452e92ed]
    + Implement `pick` method on `Any` taking HyperWhatever as an argument (`.pick(**)`),
      which  produce all values of Foo.pick(*), and then produce all values
      of Foo.pick(*) again, and again, ad infinitum [cd4a72b6]
    + Add a `repl` sub to enter the REPL from within a program [4183cdaf]
    + Add `Buf` and `Blob` coercers to `Blob` and `Buf` roles [f83e5511]
  + Changes:
    + No longer use Unicode in REPL on Windows [5e1c97ba]
  + Efficiency:
    + Tweak worker addition for many small tasks [39e5834d]
    + Make `.grep(Regex)` and `.first(Regex)` about 40% faster [0de28ae7]
    + Speed up setup of NativeCall subs and reduce memory usage [3b7fef2e]
    + Micro-optimize `levenshtein` sub used to suggest alternatives in error messages [da0f561c]
  + Fixes:
    + Improve stability on Windows by trying to rename precomp files multiple times [a9510b8d][7dfed29c]
    + Fix bogus "emit without supply or react" error when using `hyper` to process arrays [4953a299]
    + Fix some edge cases with `(+)`, `(.)`, `(&)` and `(|)` set operators [89fd8a8d]
    + Make signature destructuring with a `Junction` an error [15d372e2][57070f05]
    + Make `Mu eqv Mu` work [750c5d04]
    + Fix possible error when throwing an exception on JVM backend [9743035f]
  + Internals:
    + Provide support for `CORE::` namespace for the core itself [ea92934c][3fcf6f75][b03afef5]
    + Remove a special case for native arrays on JVM [28ff12a8]
    + Simplify `Iterable eqv Iterable` implementation [168da39a]
    + Abstract single elem path of `[]` into `Rakudo::Internals` [db074a8b]


The following people contributed to this release:

Daniel Green, Elizabeth Mattijsen, Stoned Elipot, Tom Browder,
Christian Bartolomäus, Will "Coke" Coleda, Juan Julián Merelo Guervós, Vadim Belman,
Jonathan Worthington, Stefan Seifert, Bruce Gray, Nguyễn Gia Phong,
Gianni Ceccarelli, Stéphane Payrard, chirvasitua, rir, Alexander Kiryuhin

This release implements 6.c and 6.d versions of the Raku specification.
6.c version of the language is available if you use the `use v6.c`
version pragma, otherwise 6.d is the default.

Upcoming releases in 2021 will include new functionality that is not
part of 6.c or 6.d specifications, available with a lexically scoped
pragma. Our goal is to ensure that anything that is tested as part of
6.c and 6.d specifications will continue to work unchanged. There may
be incremental spec releases this year as well.

If you would like to contribute or get more information, visit
<https://raku.org>, <https://rakudo.org/community>, ask on the
<perl6-compiler@perl.org> mailing list, or ask on IRC #raku on freenode.

Additionally, we invite you to make a donation to The Perl Foundation
to sponsor Raku development: <https://donate.perlfoundation.org/>
(put “Raku Core Development Fund” in the ‘Purpose’ text field)

The next release of Rakudo (#148), is tentatively scheduled for 2021-07-23.

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
