%% title: Announce: Rakudo compiler, Release #170 (2024.03)
%% date: 2024-03-28

On behalf of the Rakudo development team, I’m very happy to announce the
March 2024 release of Rakudo #170. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2024.03:

+ Improvements:

+ Additions:

+ Fixes:
    + Add Parameter.of method [586f32cf]
    + Unbreak the JVM build [612dd255][fa853abc][55518662]
    + Unbreak t/harness [9395af5d]

+ Deprecations:

+ Internal:
    * Streamline "core" (bootstrap, core, metamodel) [50fc7284][eea99c2b]
      [704fda60][96c0a5d5][485fc866][a4ac1720][97a0eeab][18989a66][fb7e44fc]
      [bef608a8][4b124a98][1491f822][8e863c81][7dee0530][375393fa][4ee064dc]
      [ec11e06b][8f9ad9a3][8b00ff5b][0b65e78b][3a66dc10][c9ecbda2][48509e00]
      [70b8b229][591792d7][99f52bcd][70be8a09][4581555c][bc8f695e][c283942f]
      [b4a21078][2a3a1f35][b107962c][76030573][14be2dab][3e476241][e294a3e0]
      [3eed834c][43017b21][4d91de6d][01077ad7][1f56f1c6][f73b4ccf][0852efe9]
      [8ee1919d][28a51cfe][008cd24e][1f073f84][9d7a4c26][b83e6fa5][aa1f2274]
      [d8afa16e][08d9ebf6][85e07ec8][b73ed690][d8e9c1cd][c183d282][cf474c92]
      [ae526254][57c92969][a55e7fd0][dce688d4][7ab1bba3][68628fe3][cf46bd5e]
      [20fbb0f1][67c3b662][be990a2e][efeb9d77][b110ebb7][c49e05d8][20376f07]
      [98ca8eb9][6945637f][85b65a9c][fc7c3f47][ccf48ad2][79ad42c7][18abe8c3]
      [adff147e][bafa92a6][72c491f8][2b6cfaa9][e583fa08][ca2f0d1c][621b2c75]
      [53649d4f][8dffcd30][4cdb8a3c][6312d5da]

+ RakuAST Development:
    + Fix INIT blorsts running in wrong scope [237469d2]
    + Treat =place as a directive [b82fa83d]
    + ignore =finish if there is no code [f997c36c]
    + fix declaration after bind in ExpressionThunk [b1b4329b]
    + Replace fallback resolver with compile time lookups in BEGIN time code
      [639f20a2]
    + Fix QAST::Var type of captures [9a983ff4]
    + Add a few missing set_braid_from_self calls to Grammar [4152833b]
    + Support CORE:: compile time lookups [62b89107]
    + Support CORE::v6<[cde]> compile time lookups [8467b84a]
    + fix accessing 6.e PseudoStash at compile time [196fbee6]
    + fix look up of our scoped subs in my scoped packages at compile time
      [3853a0f8]

The following people contributed to this release:

Elizabeth Mattijsen, Daniel Green, Justin DeVuyst, Stefan Seifert,
Will Coleda, Dmitry Matveyev, rir, Anton Oks, Bruce Gray, andemark

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

The next release of Rakudo (#171), is tentatively scheduled for 2024-04-25.

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
