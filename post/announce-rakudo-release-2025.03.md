%% title: Announce: Rakudo compiler, Release #181 (2025.03)
%% date: 2025-03-23

On behalf of the Rakudo development team, I’m happy to announce the
March 2025 release of Rakudo #181. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2025.03:

+ Improvements:
    + Make sure grammar changes persist in the REPL [70872b98]
    + Allow multi-line comments in REPL as well [3ee9c20b]
    + Align bytecode part of precomp files to 8 bytes [ecfc3a8e]
    + Allow Mu:U as synonym for Mu in testing signatures [02ce95d9]
    + Show initial memory values with _ between thousands [f7023342]
    + Add support for type-smileys in .assuming [c9c2ca45]
    + Use less confusing "private" class names [fed35e57]
    + Update leap second date adding logic [ab04e6b6]
    + Make sure that .head/first/head() on natives are "raw" [19f77e30]
    + Expand Hash parameterization [bc057031]
    + Make sure Hash/::Typed/::Object take same parameterization [9fe52a1d]
    + Restore the old implementation of .assuming [eb2315f1]
    + Wrap enum value stringification in a quietly [a36de41a]
    + throw X::Parameter::TypedSlurpy exception, pass two test in t/spec/S06-signature/slurpy-params.t 
    + Hopefully reduce BUILDALL -> POPULATE confusion [0adcacd4]
    + Make test always work [f9dd3165]
    + throw X::Attribute::Undeclared, pass the test of "class D { method d { $!e = 1 }};" (#5820) [9f58a342]
    + throw X::Parameter::TypedSlurpy exception, pass two test in t/spec/S06-signature/slurpy-params.t (#5818) [518596b4]

+ Additions:
    + Add Range.min/max(:k,:kv,:p) support [b6eed683]
    + Add === candidate for type objects [3f6ac5a2]
    + add X::Parameter::WrongOrder exception to wrong order parameters [f0913170]
    + add redeclaration exception of placeholder parameter [1d082963]
    + add X::Parameter::Default::TypeCheck exception to parameters [9713c41f]
    + Add a tip to MethodNotFound logic for !cursor_start [cbc29eee]
    + Add a missing proto to WhateverCode.POSITIONS [86ece4dd]
    + Add variable name if possible to warning about use of uninitialized numeric [fc4811a2]
    + Add missing .Numeric to infix % [0730199b]

+ Fixes:
    + Use proper typechecks in .assuming logic [aff6eaf3]
    + Make min/max(Range) do the right thing [2d6dd3e3]
    + Fix object in QAST::WVal, but not in SC for named parameter default types [a83a0fb7]
    + Don't try to lower signatures with parametric generic types (#5804) [0bcab7a8]
    + Fix snapper's memory reporting on MacOS [d02733a4]
    + Make sure that sub-signatures with returns work ok [3bbb521a]
    + Preliminary fix for .assuming producing typed slurpies [729d26ea]
    + Fix wrong sigil in orelse's signature [21e52bcf]
    + Fix accidental execution of stub code when trying to report will phaser NYI [085953b8]
    + Fix Buf/Blob.join/raku for uints [01369236]
    + A bunch of Undeclared Attribute check fixes. [7c62a5ad]

+ Internal:
    + Simplify solution for #2245 [d3a1fb64]
    + This module is explicitly skipped by blin [a70fbf6f]
    + Skip multislice array test for now [03372894]
    + Mark failing test as todo for now [8475b1d6]
    + Remove special casing in implementation-detail test [69d4fcb4]
    + Remove leap second check step from release process [ee28391b]

+ RakuAST Development:
    + 293 commits, 143/153 (make test), and 1298/1355 (make spectest)
      [e1068233][e45e4de0][6a5d53e7][2383a90f][2fdd3418][ede438ef][ea20517e]
      [34d9f24c][68eac4d7][1505faae][080e71f3][d5fb927c][e3926908][37b45597]
      [7940f6d8][4dde69f9][3610e7ab][0efea1f1][4067f6f6][58d92351][0492be40]
      [6535f2df][8dfdb413][0ac3fa38][700d34cd][9afde807][725b7b3d][bc286f26]
      [3f090dc2][88f26e9c][9e5f7f97][aa157805][56e26ea2][e3ac543e][394b19da]
      [df08bdd8][fdacf483][e5b214fc][3b48f42b][55e48af9][c1ad0834][7b7b450a]
      [2a09cb01][2db41c00][2ad1b62e][b0e2485e][e0348d46][8153124e][9f070607]
      [26139a59][b082c4c5][3cd28fa7][dcec2696][b06bd813][101f5055][84ef3bbb]
      [8f532679][5c352223][089fe248][8c6284b3][a2c554e3][f5aa9fbc][dc8dce73]
      [ca3c621a][5b7650c0][78d9bf5d][324fd382][b5ea8bd3][5c43bc69][bfb070a7]
      [e0aaadf1][2493f333][b8ae70ef][6539e984][ad746c66][47f8008f][9354366c]
      [507172d6][dfcf45b8][4de2d230][100af6aa][34a75063][224c8558][0f008a44]
      [83cac059][24bde349][b5a684d7][07514a57][e84b3efa][fecb520d][6256ce02]
      [2522225b][b038ec7a][5cf5b2d5][4342c70b][250c48e0][5ee7e4aa][8f0d6636]
      [d86d1828][ef0174bb][7f1c8c69][a30c9187][9182b24d][142dee78][75deae59]
      [e5f44f4e][26dd607f][1847c13f][c8cc26ad][188c9f71][6084eb2f][00a93bf8]
      [f8b15dcc][8faa16a5][3d651c2e][8026638f][1f958343][79175d2c][fe3bc9d1]
      [fe1a0f5c][df73f8d1][b3546fe5][339ee649][bb1737fc][3b020e9c][a343c414]
      [e84e7a94][ac06d7be][d9b7d43b][0494de12][19c4cfef][8a5a40e1][e76deb89]
      [812c7ec7][d7739900][adae9562][42d49a97][19fe3780][49da3628][3a6c59c0]
      [7cba23e3][15e4299a][e2ec3a2d][d6d38595][1132925e][1fd7db7f][672126d4]
      [4ee9503b][0cd87d3e][7b093be2][c77434ad][70fd1bfa][6224971e][45c4f74f]
      [fa865469][9f1fff2f][7f6af8e4][c1eead87][f40b747a][1a6bca62][da6c8e36]
      [c6e0a648][c9423ed2][068f564c][7addb39d][7d480094][0a4260b3][cb0a4931]
      [cb524918][b707a437][4a8ee5d2][9bb1fc7d][490a23b0][170711bd][1a1aa92f]
      [8d62f88d][291a6140][b34d0f08][dcda59c7][c49eb0ad][404dbbc3][42e90dd1]
      [25f6cf0a][35bf71cf][377272b6][f826e72d][4566fe62][d37ce2b0][b3870f8a]
      [f3bcbc0e][ad751d98][1bf36149][86cb1ff5][b5473de2][075d223b][9610e561]
      [4cb9daf8][c1378a28][c8fb6902][584ea0ff][63a4ba3f][f8a30b29][38058904]
      [f3f31de6][b12b45b5][d02dd8e3][c13e18b9][c974c646][668ee6c1][242f69bf]
      [7566dd3b][a7717ce9][51d403a5][004c6521][49c110f4][88566130][4ede82f6]
      [f20251a5][cbccee08][26a9c1a7][02e32a22][773f9b97][ee50ab5b][c5fa7bb3]
      [fba808c2][f646c5a2][69dc86fa][a2f7c1aa][b6346aad][cc2e9419][507584f3]
      [d1466f73][ef38f301][9d7abd04][c2282618][cca6be66][7b4ba29c][57fcb1f1]
      [90d8e011][1d32d902][bcff40fc][c6e150a7][dfaa9684][448d1bcb][09f0c2b7]
      [004fd130][c53e470f][dc70e35d][02b208f9][fce3590f][dcb544ad][7ab1a0c9]
      [b61bfeb5][9831e5cb][e2eba0f9][55c12bb8][8cfbd818][549f71c1][d4cab4df]
      [05283093][fe32fafc][8cf2fcca][493d2365][2856fc81][2e637594][bc37a2a9]
      [34fc932e][a213ee72][cbc4af86][5386a7a2][6e9504e3][0e1c6476][dc4e30ce]
      [8f268d29][6c791595][7476648e][a4c3ed56][c19be7ee][8fbe800e][f7f670f3]
      [9b95ab96][915c8def][f3ae9c38][b801bb5b][c7cfbfca][7826a767][0fb4b32a]
      [91c98a2e][dc47d51c][0ab88eec][2a6f1822][e524c043][a630609d]

The following people contributed to this release:

Stefan Seifert, Elizabeth Mattijsen, Daniel Green, Jimmy Zhuo, Will Coleda,
Justin DeVuyst, Timo Paulssen, rir, finanalyst

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

The next release of Rakudo (#182), is tentatively scheduled for 2025-04-19.

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
