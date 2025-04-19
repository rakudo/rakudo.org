%% title: Announce: Rakudo compiler, Release #182 (2025.04)
%% date: 2025-04-19

On behalf of the Rakudo development team, I’m very happy to announce the
April 2025 release of Rakudo #182. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2025.04:

+ Improvements:
   + Make .classify/.categorize return proper object hashes [bcdbbdd8]
   + Make QuantHashes return proper object hash for .Hash [998cde58]
   + Make the :{ } object hash syntax be like my %h{Mu} [8f8b9586]
   + Remove parameterization returning Str workaround code [a22d6740]
   + Make error message handle nameless declarator targets better [81c863a7]
   + Add $?CONCRETIZATION to role bodies [b38daee8]
   + Use var name in wrong literal type exception [7cf3b085]
   + Add Sequoia as a known MacOS distribution [f4b545bb]
   + Future proof $*DISTRO.desc on MacOS systems [7741548f]

+ Fixes:
    + Bump NQP to get 32/64bit writing to file working [606e4eb0]
    + Fix throws-like applying matchers to group instead of expected exception [3caa98a9]
    + Add a "die" that was missed in 69dd7d66ea [cfc74a80]
    + Make native array parameterization die [4b884364]
    + Fix benign typo in Rakudo::Internals [08825c39]
    + Fix useless construction of List in Rakudo::QuantHash [39dc1ab6]
    + Use correct typed accessors where able [de421f79]

+ Internal:
    + Migrate experimental tests from roast to rakudo, cleanup
      [114dafe2][f434c4ba][b43527a6][ab34d108][fd069d66][067236b3][3c7bd849]
      [42557e38][570d1f89][27e6dc36][f7369d34][fd7d1808][4c0bbc42]
    + Update RELENG documentation/process [e5adb4d9]
    + Bump NQP to update mimalloc version [29064c71]
    + These tests pass in default grammar [8ef1651c]
    + Remove useless `,` [c2a5b8c3]
    + Add todo for legacy grammar [01a66c12]

+ RakuAST Development:
    + 201 commits, 163/166 (make test), and 1349/1352 (make spectest)
      [37c301ea][4f5f4cde][e71451db][4cc7a280][28d1f61d][5cec77ba][4c990d4e]
      [3f91ad25][7c2561e3][c92b798d][083f0fb2][3359acdc][6e6a7855][060f462f]
      [0d2ab245][dfa806e6][8946ca02][f0244a90][62c9b872][927118ca][eb5620f2]
      [727b7281][921be1d8][ba9a70b1][fa95e441][989a3fc0][01a33621][ee87a4bb]
      [2604cb5d][76be7835][ffb3741b][f46e9940][5c35f212][c522ddff][6fd413c0]
      [6fd413c0][870239b4][06a7b5da][e237e2b2][1cd10012][55e087ac][804603ab]
      [65a0e543][1560d014][65ec9073][802c2659][f9f232f4][83d35bb5][86c5bc10]
      [b511aac0][4163edc8][5110d672][a5ad6110][bb57f409][5bdb8c18][1c2f7237]
      [91904bc3][bf5e1568][f6845708][635aa89b][fd7efd2e][d9002913][e85f2628]
      [18b6cef6][915c14c0][6ba18492][bf4646e0][ef387e86][48c68051][5a45937c]
      [551e2a61][7458db3f][be1d9463][44c36551][18b6cef6][915c14c0][6ba18492]
      [bf4646e0][ef387e86][ce32eb41][716449d6][817aee35][a8749b8c][6d6cdd87]
      [885b637e][3b7bd07d][1075c2eb][fec75608][400e48f7][0d9f3b1f][6a3f69e6]
      [79f940b2][aa89b805][8ed9bdbc][2b729305][d6fb1395][a3d6cb83][ad71cb1c]
      [a61945d0][a7411877][49d028a8][c10b50ef][70416f1d][888a90e4][8ec9824f]
      [2a9b9fde][14685d4c][f5fa3516][3c503268][fa13ca1b][00894429][524ba1b2]
      [37fbd041][ccc430b1][710315db][7bacf799][ed8f17f8][b429f9fc][a3709f3f]
      [299206eb][b857f36b][261fbad8][49c5dc47][27f47363][8246458c][6a97c889]
      [8e998ae4][09a085a0][16c4fc4f][bf6ba28e][4271ccc0][156aeef3][ad9be7bc]
      [fbf25da7][e50a90a3][a8292bd0][b8f45617][c162b163][4582cf63][af7ed31e]
      [55c894c9][d29d7c48][4992824e][a995e805][f1980a8c][25c5350f][550ad11d]
      [46f933a7][28b4b337][7f1cf262][3a8a337c][c736ec00][9ebb5c87][038a6e85]
      [d505730c][b0ff1200][1a8c6813][8bdbc9f8][7b0f03ea][4fad4276][1f883a2f]
      [1451385e][7f0474c3][06c96934][f9930021][00aa9b8f][76951f3e][3fc6af21]
      [63b74071][0c3d980f][b1b92e3f][5c52edc2][63f1e95f][01b0a8a5][ed8ee485]
      [cd685806][daaf431d][772e6d6a][cf8c5ef2][52658b94][ef395046][f0e8b571]
      [8d0fe4d4][fc01dfd6][edc7ae97][f59944b1][cbb2eb1d][726864bb][42197d93]
      [eac975fb][d475334c][61710f17][7414f915][5236bc99][7745d938][0957a8b7]
      [211641a4][304581eb][0bf9e87e][25117e30][a3af5e38]


The following people contributed to this release:

Stefan Seifert, Elizabeth Mattijsen, Will Coleda, Daniel Green, Jimmy Zhuo,
Donald Hunter, Tim Nelson, ab5tract

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

The next release of Rakudo (#183), is tentatively scheduled for 2025-05-17.

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
