%% title: Announce: Rakudo compiler, Release #161 (2023.05)
%% date: 2023-05-31

On behalf of the Rakudo development team, I’m very happy to announce the
May 2023 release of Rakudo #161. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2023.05:

+ Improvements:
    + Allow Nil as payload to X::AdHoc [45b3a050]
    + Separate =input/=output from =code [6f482ca0]
    + Handle uncontainerized type objects as invocant to AT-POS better
      [3139b6c0]
    + Introduce Iterator.is-monotonically-increasing [149dd880][2edcaa35][e702f0e6]
    + Give subsets their .^mro method [7e785883]

+ Additions:
    + Make Int.Str take a :superscript/:subscript named argument [01e82224][0248cc3e]

+ Fixes:
    + Nil.Int should coerce to 0, not to "" [70dc3c8a]

+ Removals:

+ Internal:
    + Introduce Str.is-whitespace implementation detail method [fa2b9e34]
    + Make Str.naive-word-wrapper aware of ANSI escape sequences [bb4514c9]
    + Streamline X::Syntax::Number::LiteralType a bit [bc51ff46][6e20165a]
    + Generalize -0123456789 to ⁻⁰¹²³⁴⁵⁶⁷⁸⁹ mapping [5d6ab03c][c33c5538]

+ RakuAST Development:

    + A lot of work was done on RakuAST development (over 120 commits), raising
      the number of passing spectest files from 787 to 825 (out of 1355).

      [7ca567b4][f8ac118c][7a442c6d][9cd11f75][7ac66112][2d656cd2][f12c8598]
      [7267e7f1][6235256a][13e96284][812ed5f6][1f010bd8][14fed334][a7571cb4]
      [c7f4ab14][7b86e38b][134418bd][2dd66bcb][b29e1084][aedeadf9][8b462b40]
      [2bd73522][a72af165][3b302c06][904d3126][eef4a7ca][97325f65][9ca2e9d1]
      [f4f61663][38cdaf3c][e253ce45][3a801285][edaa90ac][654fb380][eddff44e]
      [8d74e4e7][80c35e42][ae7a219c][c55455d7][5965d7fb][8e513078][2e3690bd]
      [ae1856db][6f3c5352][d1ca18f1][eedc165f][c10767e5][242f3098][cc173d83]
      [d9179b2c][b317b4dd][7bbc2f99][3b705faf][d58e68bd][d1d64b38][b5a30e70]
      [3f62a6f4][b6fb937d][4b69dd51][8bb54bf5][74d021c4][cd6bc209][cf3d937f]
      [a4c7b199][5c4f9efe][e92e6f2f][bfb1fe31][ad422bb6][dd5125ae][fc879d6f]
      [c4275902][6604178b][703378ea][5ea3f79a][08da4bfe][a1d39af5][a2102a96]
      [6b6f28ed][ee5e4c3b][50fc47cf][eaf4aea2][ff29c918][10742c99][6a79c0f5]
      [7243e228][b881fe84][b0339c20][c14084ec][01790de4][4f6da10a][80397225]
      [a3f0f365][34c3e7a8][826eca3f][809f84cc][6b5171d6][e17840d8][cdb9a836]
      [f4fa7318][7a49b6ec][b50187e4][a4698793][af54c0b2][592d11d3][2ed5c891]
      [09c4b057][f2b69f53][188fbb62][b45b054d][c2449ef6][14b803f5][73a6ff6f]
      [213bacbb][fdb84124][ba7f659c][8099dd3c][1fd990fb][6325d10f][a78234e1]
      [65dc1204][cb8e052b][e6c9e8f1][2592579c][916bdd45][47e1fd0c]

The following people contributed to this release:

Elizabeth Mattijsen, Stefan Seifert, Justin DeVuyst, Will Coleda,
Luis F. Uceta, Timo Paulssen, Daniel Green, Jan-Olof Hendig, Adrian,
Bruce Gray, James Cook, Márton Polgár, Roosemberth Palacios

This release implements 6.c and 6.d versions of the Raku specification.
6.c version of the language is available if you use the `use v6.c`
version pragma, otherwise 6.d is the default.

Upcoming releases in 2023 will include new functionality that is not
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

The next release of Rakudo (#162), is tentatively scheduled for 2023-06-26.

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
