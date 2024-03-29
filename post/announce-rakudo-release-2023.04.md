%% title: Announce: Rakudo compiler, Release #160 (2023.04)
%% date: 2023-04-21

On behalf of the Rakudo development team, I’m very happy to announce the
April 2023 release of Rakudo #160. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2023.04:

+ Improvements:
    + Make `Mu.WHY` a bit smarter, also handling CORE subroutines [faff9091]
    + Give `IO::Path.chown` more `unlink` like semantics [dde366ee]
    + `snip` now can also handle infinite lists [ec8cdd54]
    + Some exception message tweaking [331fd237]

+ Additions:
    + use v6.e.PREVIEW or v6.* implies `use experimental :rakuast` [fcdb78ce]
    + Add rotor capabilities to sub `comb` in 6.e [28a32766]

+ Fixes:
    + Fix `Range.Bool` for empty and infinite ranges in 6.e [83caae8e][188beb55]
      [53135c8d][f31a6d56]
    + Make sure `snitch` caches Seqs [61b8bee3]
    + Make prefix `//` working again [efb59f78]
    + Make `Cool.uninames` actually work [500ad5f6]
    + Make `Cool.uniname` actually match the documentation [af0c88cc]
    + Make `List.Set` work again without hanging [5a0e7a76]
    + Make `Distr.desc` correct for MacOS 11 and higher [eae02e8e]
    + Fix the git clone cmd in install docs [f79ae571]
    + Fix `IO::Path::Parts.raku` to handle type objects correctly [16924b41]
    + Fix "Unexpected named argument 'no_fallback' passed" on some meta types
      [b01d996d]
    + Warn about missing perl5 mods (Configure.pl) instead of crashing
      [6f86699f]
    + Make Supply.zip handle some potential deadlock situations better
      [6e2a46f6][2225e207]

+ Removals:
    + Remove support for PERL6_EXCEPTIONS_HANDLER [5d7e3857]

+ Internal:
    + Use HLL comparison for floating point noise check [3bd73896]
    + Remove some unnecessary BUILD methods [1a86348a]
    + Add Str.leading/trailing-whitespace implemementation-detail [5feb7f7f]

+ RakuAST Development:
    + A lot of work was done on RakuAST development (over 300 commits), raising
      the number of passing spectest files from 694 to 787 (out of 1355).

      [1f45b310][098a26e3][8809e87a][1338f4ae][e73f3bbd][48c19e15][f6fe1168]
      [272cfdbf][39b536bf][f5221b97][880ca8dd][cbf3cd58][c5f555de][95e0a178]
      [f2fb7b40][e9f438f5][376eb918][97d15491][55bf595d][f4335a84][463e7ed4]
      [d769af80][84d1ec71][1bfe7a0b][e3e250c2][a620d0fb][ae4ce14a][6489eb82]
      [6c3468c8][b3d704fe][c74e1608][3bc6e525][e32bcd1f][7f6cfaa8][003c7753]
      [6c035ff2][2b0d1019][a220d715][543ecd9d][f2fff6ea][a003c3c8][7e334408]
      [6669c0f2][377f6015][dadeb74e][7f3802c4][c32836f2][93609de3][9d55cb25]
      [2183ec72][9995ba19][5d8ddaf5][d4633b15][a2cd27b5][110c39d1][d75df77d]
      [4fa44f8d][e8f419ae][e177bc2e][f49b1080][3f7deafb][46a99d18][610bcfaf]
      [9406dfe9][c9987b7c][c487eb15][bc24e6f2][79ec334e][ac217e86][525dd643]
      [5a869366][322f287d][11cf9aa8][d93536e2][6079cf0b][1ae83e43][675c7717]
      [5787c4f6][13c2bade][9c030754][2a5220a5][b5d1ddee][62122e57][08930e8a]
      [fa79f834][965520bf][2d54be72][d78754cb][26801016][f06c9c35][0d9a7756]
      [8a3289ce][f07fae0d][ce6e9031][cf2f709a][b710020b][13005cdd][8cb0dcb3]
      [301ca0dc][f3c050ef][0482ee7f][c0c08a7f][4a1fad58][7fae9a11][96c68ec5]
      [d96a1b95][bd23fda5][073da5cd][991ebca9][a5be6d2a][b685e676][892d76e4]
      [40e2e095][47342e10][7ca3189b][166e1668][3e241ad9][15586b8e][822a74a6]
      [ede05210][8bfb2c41][217a47b2][2fa64b59][c0be572f][d2eabd01][38c4e0ee]
      [98cc71c0][1d7bf1c6][23a7c140][90a8183f][bdafcd10][199ff77a][db608f16]
      [cacc3e39][98169657][d8d9a9f6][f7d1ad37][3540ce25][2f3e6bf9][58770a4f]
      [761a5a8a][93c02664][23433abe][fa384e23][588d0f6a][cd218869][9db0bc97]
      [6d9c4c76][eb72312e][6ac6cd09][c3b55cdc][7c6624b3][789a8096][1dcf6452]
      [b583c333][f41c769d][f72d58bc][9245f985][6a2fee72][c5599481][be633ca0]
      [c843b6f9][e08b201d][59115717][3b0adfa4][837a2eb8][18a5dab5][b8488d24]
      [83ed64e9][58157b8d][6ae35eb9][b3ac1d74][28822c84][ad97d8d5][c6b2f8ac]
      [a7748738][fb53d50a][9ef618ff][bc481335][3a9c1540][36b6244a][81f2ea21]
      [fb30afae][5ff428dc][e514d5d9][fb988331][07d46773][b258927b][6e8abbf9]
      [e5e5acb4][0a79b6a9][b5042248][238931ac][d4792fde][ba372596][4b1eaecc]
      [b6525348][a30f08cb][cacd8bba][3080103b][9cc7cfe0][6eb3fa01][caa6d00d]
      [33e9a585][b340c2b1][3ebdffd4][7f4554c1][dbe6ae88][b5b4e16a][da6ac812]
      [db0b6feb][709c0546][7f08b0b5][9774de50][26d9a2ef][cecba5a4][e42ecff0]
      [34905037][1f149b1a][0235a9be][f5dda722][7bcf8d1b][83f2cb8f][d3b58a34]
      [a48bfb80][c921a0ec][a1f20e56][e6e28761][88e479f8][7dd3696b][bd084fc3]
      [00d35fbd][f7a0caea][a930b3ba][679d5c41][f380b87b][458c0fc3][03db2614]
      [ed7aca5f][ae5c20fa][fd8d76e3][dbad89cd][a4dad180][3fd6ccbd][54e10712]
      [4d1ddc39][b6a2b1f4][ec5b592c][d540942a][38254c49][d1fe3fee][283eb484]
      [4682d2ed][45dd84f6][ad5e8305][dc8b66ae][536b5eb7][e68322db][55660490]
      [d9dd95c1][ae0c69a9][01abff75][8f5bb47f][f9027be3][56d63c96][5f66d853]
      [b5277b99][a1c73f38][30e15f04][48fc2445][51c3b7bd][c8262a23][46eb6d2c]
      [fba82975][3fb68b35][b817812b][c45fa248][68614a0a][eed0148a][b09a6a15]
      [770ff00f][c4ab78b4][f040293a][36ec8e33][b8763c35][b8e1ba3b][262cc42e]
      [351f053d][72b8b8b0][2d66116b][d9658202][6df32e8b][159cd628][150200c2]
      [1fd667cf][31fb2b9e][027e37cc][5d1d02d9][7b4b680e][3b838eaf][62d263fc]

The following people contributed to this release:

Elizabeth Mattijsen, Stefan Seifert, Will Coleda, cfa, Will "Coke" Coleda,
Justin DeVuyst, Richard Hainsworth, Tom Browder, Daniel Green,
Timo Paulssen, Vadim Belman, Ben Davies, Brian Duggan, Horimoto Yasuhiro,
Kevin Pye, Patrick Böker, Pierre-Emmanuel Lévesque, raiph, rir,
Jonathan Worthington, Luc St-Louis, Márton Polgár, Tony O'Dell, ab5tract,
thundergnat

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

The next release of Rakudo (#161), is tentatively scheduled for 2023-05-26.

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
