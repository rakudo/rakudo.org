%% title: Announce: Rakudo compiler, Release #168 (2024.01)
%% date: 2024-01-16

On behalf of the Rakudo development team, I’m very happy to announce the
January 2024 release of Rakudo #168. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2024.01:

+ Improvements:
    + Make dd show types better [57bda882]
    + Make use of native unsigned integers better performant [c0340fc7]
    + Add dispatchers for handling unassigned elements in hashes and arrays
      resulting in better performance in some specific idioms [0e2e20a4]
      [fa4cc823][1ef51856][70d53fb6][79728078]

+ Additions:
    + New nqp::syscall/register/delegate/track/guard ops as shortcuts
      to otherwise very verbose nqp::dispatch arguments [a3645497][2d8839e1]
    + Document dispatchers [9b179a55][690c6c01][93f2a8aa][bafa5ad4]
      [f0673003][2aa796fd][ac5c89bb][6ba5ee53][1721f00b][5394496a][5dd90860]
      [e0952486][9a07a6c8][87bcbe6a][b356bbfd][f651e9d6][2e9c0cc1][26ab5c21]
      [4dc737c3][62a67452][93c31ce9][e002a7a8][7456e6dc][b94e98fc][6819b9de]
      [bb384c41][fd5e4da6][f2b09f7e][6f75ed00][808885d7][fc670bb8][8bf824a5]
      [2cfa0768][d6d7d154][45b1025a][6b6548d8][d327d14a][120a06c7][95770d31]
      [f13ba1d0][12db03a5][11734d4f]

+ Fixes:
    + Handle .extension("foo") on IOs without extension as if :parts(0) is
      specified [8cda0bc6]

+ Deprecations:
    + Deprecate many Distribution::Resource methods [c83eccfa][cd231798][4d797bbb]
      [7ac9aeab]
    + Deprecate the use of PERL6LIB [47fdc20d]

+ Internal:
    + Show :auth:ver:api of module loaded (for RAKUDO_MODULE_DEBUG) [91a062d2]
      [fcf22b4f]
    + Prevent possible recursion in archetypes dispatcher [6b61de2c]
    + Move backend tests from runtime to system build time [69b8a24a]
    + Use new nqp::syscall/register/delegate ops [becb682e]
    + nqp::syscall is Moar specific, so protect it [b8aaffd6]
    + Use new nqp::track / nqp::guard ops [13439539]
    + Ensure that nqp::track/guard also have their args unboxed [5d377a12]
    + Use nqp::track/guard in NativeCall dispatchers [6008a00e]
    + Document and/or streamline dispatchers and related [9b179a55][690c6c01]
      [93f2a8aa][bafa5ad4][f0673003][2aa796fd][ac5c89bb][6ba5ee53][1721f00b]
      [5394496a][5dd90860][e0952486][9a07a6c8][87bcbe6a][0e2e20a4][b356bbfd]
      [fa4cc823][1ef51856][70d53fb6][79728078][f651e9d6][2e9c0cc1][26ab5c21]
      [4dc737c3][62a67452][93c31ce9][e002a7a8][7456e6dc][b94e98fc][6819b9de]
      [bb384c41][fd5e4da6][f2b09f7e][6f75ed00][808885d7][fc670bb8][8bf824a5]
      [2cfa0768][d6d7d154][45b1025a][6b6548d8][d327d14a][120a06c7][95770d31]
      [f13ba1d0][12db03a5][11734d4f]

+ RakuAST Development:
    + some work was done on RakuAST development, but the number of passing
      spectest files did not increase this round.

      [1ecff5c5][3b9de763][35484381][54ee127b][5268106d][000ac084][94e58e05]
      [3c7057c0][c389de26][e1fef673][4bfde24c][91c157d2][3f6fff74][bef0a9bf]
      [3c1ad110][4b6f77f4][f5e9b2dc][bdfea0b0][d992bf6a][7ea760a0]

The following people contributed to this release:

Elizabeth Mattijsen, Richard Hainsworth, Daniel Green, Justin DeVuyst,
Nick Logan, Will Coleda, Vadim Belman, Nahuel2998, Osei Poku

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

Additionally, we invite you to make a donation to The Perl Foundation
to sponsor Raku development: <https://donate.perlfoundation.org/>
(put “Raku Core Development Fund” in the ‘Purpose’ text field)

The next release of Rakudo (#169), is tentatively scheduled for 2024-02-29.

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
