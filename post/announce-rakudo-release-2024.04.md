%% title: Announce: Rakudo compiler, Release #171 (2024.04)
%% date: 2024-04-25

On behalf of the Rakudo development team, I’m very happy to announce the
April 2024 release of Rakudo #171. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2024.04:

+ Improvements:
    + Make X::Syntax::Number::LiteralType a subclass of
      X::TypeCheck::Assignment [5b7cf94c]
    + Make Rakudo up to 2x as fast on the JVM backend by using fastutil [05aae712][23a9fdbe]
      [955bc856]

+ Additions:
    + Add Allomorph.narrow [e6a28e1c]
    + Add dispatch disambiguation via 'is item' parameter trait [70f16f63]
      [3b42de18][36901bb0][0ce55752][c02bd131]

+ Fixes:
    + Fix "No exception handler located for catch" trying to report
      method-not-found [b61de7a9]
    + Fix naming of anonymous classes [ad12f2a9]
    + Increase JVM max heap [2d76783a]
    + Fix reporting of X::Role::Initialization errors [0eb99b8a]
    + Fix race condition in lazy deserialization on MoarVM backend [d6320eaf]
    + Fix obscure pattern bug in regex engine on MoarVM backend [f56a3973]

+ Deprecations:

+ Internal:
    * Streamline "core" (bootstrap, core, metamodel) [169b28f3][b37302cb]
      [010d6fe5][b5f3b474][67f662a4][8a628aa2][9c71fae0][73e1c716][fd6ffe33]
      [aa02c8b8][b411252a][d1a5b479][3b736e56][c7d24b3d][d1fbc0d7][ef942c5c]
      [00256ffb][189ce4f7][6c663f78][dc243d12][dab45fa3][1af29151][5ed668d4]
      [1b5c0820][039dbe49][c48fc1e3][9ecfb483][54a4c8cf][4d33d371][45dfb1bd]
      [ab1784b8][5cd846b2][758500f4][802e8140][e35ac0b4][555f4b00][406ad16b]
      [392213dd][037fab6c][502a6a15][a4423566][9f0b8689][5256102d][a153c729]
      [87feb40a][4cec36b7][56970893][b8330182][8753b0d9][b1167851][57498126]
      [df5fc0e3][e57d8233][ece58501][d442a5ba][4fa4ca52][5c27242b][f4943c9b]
      [c6adc333][cee9f572][0f3c775f][8159ed44][c751668b][d29d3c11][0f8c0d7e]
      [35b87f36][48e87465][5cbd82d3][7235b599][f329c52d][2a233d52][e7d72619]
      [309686a8][f73683f7][0c2c8cf9][9fb5674a][4e79d6b7][5211345d][a15f9f41]
      [75e63ce6][b1aaf338][f6cc5d95][45491ef5][5b80043a][5287d7ea][22795931]
      [25573f0c][1ee6bc46]
    + Convert uses of `if nqp::getcomp('Raku').backend.name eq <...>` to
      `#?if <...>` [f43128bd]

+ RakuAST Development:
    + 91 commits, 142/151 (make test), and 1057/1356 (make spectest) [5c195f12]
      [b4f58fe3][821e056c][c467e04c][d31e99e4][1f02a800][3709aeb2][e5c35555]
      [cdaca915][43fe36fb][ab0a1e12][9d6f2842][33f41e6a][7ce8b6e5][0d1095a0]
      [6507e0cf][06381659][30ff12ec][1f458a0f][e066203d][7ae4c397][e2e7e583]
      [9b90a609][ea84171c][fe279b05][65f349a5][ea0aa21d][ca0d1708][e64145d2]
      [a4b6c401][54854d93][3a70c503][f0d5a942][c6fb210a][1d609daf][9b377fcd]
      [e75c4168][1ccb95d4][c9b75d73][ea0b0d15][aeccbb40][6be6f159][08d439b3]
      [d0ed8cd9][312a5d85][9ca35fb9][69883683][e52a456f][09abf820][3a836f23]
      [c1582285][830727e5][08b77e94][4adf9395][fce6e368][b6d8425d][90cbfde5]
      [f7e50318][cee25a7c][c0f0ad3c][151236e8][c053144a][b213dba7][8f568c66]
      [dd62a30b][1bd789e9][a219c9bc][35cc0d6a][171307e9][5f8c7bbe][de518e47]
      [6c0e2466][9624046c][b6e8f275][7d855c4b][d1cf55cb][54ff30e8][f3b9b8e0]
      [6cf9a5cb][541a9c7d][c9c2197d][d7ded459][76f0278c][326dc12b][dbe698c4]
      [abc1a5f5][604663a3][c118661d][b899592b][eb1069ac][7de82585]

The following people contributed to this release:

Elizabeth Mattijsen, Stefan Seifert, Daniel Green, ab5tract, Justin DeVuyst,
Will Coleda, Dmitry Matveyev

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

The next release of Rakudo (#172), is tentatively scheduled for 2024-05-30.

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
