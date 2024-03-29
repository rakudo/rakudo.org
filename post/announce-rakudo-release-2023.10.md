%% title: Announce: Rakudo compiler, Release #165 (2023.10)
%% date: 2023-10-19

On behalf of the Rakudo development team, I’m very happy to announce the
October 2023 release of Rakudo #165. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2023.10:

+ Improvements:
    + Produce fewer of LTA messages, especially when coercing [8c94fa43]
      [0dfb9959][7a43c125][04a31275]
    + Don't link to docs.raku.org for non-CORE types [6050735e]

+ Fixes:
    + Make sure Rational.raku is correct [54c5682f]
    + Sort input file list for reproducible builds [34eda66c]

+ RakuAST Development:
    + Add a sigilless-variable token to the Raku grammar [7dc21fcf]
    + A lot of work was done on RakuAST development (over 120 commits), raising
      the number of passing spectest files from 953 to 975 (out of 1358).

      [0307ea9a][dfaa8c28][a6ec8dfe][05ba0ef0][89755eb0][75c615c4][e8ac6e03]
      [b58c3203][9b29fdca][92485d66][fbacec38][a9d8b783][d9f2767c][f4ceaf95]
      [95dce3cd][c52d55b3][ffbb53fd][c06027d0][4701845c][86991e14][9be9c24d]
      [c8144167][70885883][21720d90][f261b1ea][6a2e895a][96b35253][c7ffcbe9]
      [76535824][e462889f][6a198f08][bfb8ff77][c90b0393][c5adff6f][adfdef88]
      [66be950f][1f03312c][4ba8870c][5a8ad916][d6695687][2be8be9f][42dc0854]
      [c9dcfe3e][e330d6f1][4d700c5d][f8a2b984][549f03db][6209be81][80b47da5]
      [fb62e729][fad55ca9][d6fc50d6][5d12c329][1eaaded1][daee3985][f63749b8]
      [a4fae404][b13df056][3a98902d][f9fbde70][0d1c4d3a][67816a58][9ee5023c]
      [934f8063][dd24f978][a5d947d9][8bc5bdd5][aa5f512b][dacdebeb][1e5de123]
      [0c5f5ddb][d1952b9e][97c8e4e0][4e1a869a][0c2db5bf][51d80fde][9180ad77]
      [668913d9][d7cb3070][6b598859][bbb57adb][80557f3a][f45297d5][09d87ecb]
      [95d3c30e][e419d930][65b1dbd6][401c11b5][10bf44de][bb43068d][1beee9b7]
      [29e29e90][70362cf4][5fb5480c][301533bb][70b8165c][7626e1ff][d76eb961]
      [0ae02edf][fef0c629][48068a03][bb9496e5][7e66cd2f][495bec9f][1e86903a]
      [b1c2f151][4e0c8ce1][b8b323a1][f452fc3f][babd7a47][59ebf8ce][aa58383e]
      [7660d369][8defd108][55952f67][03592fc6][7b822bd1][ad3b55d6][7a4d0839]
      [be282712][644f5030][b599b57a][92567220][91d07f59][483ff06c][b47da0d9]
      [fa812743][ee062e9d][ca1f20c9][ea1ea2d1]

The following people contributed to this release:

Elizabeth Mattijsen, ab5tract, JJ Merelo, Justin DeVuyst, Will Coleda,
Daniel Sockwell, Vadim Belman, raiph, Márton Polgár, 0racle,
Bernhard M. Wiedemann, Christian Bartolomäus, Patrick Böker, Stefan Seifert,
Tom Browder

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

The next release of Rakudo (#166), is tentatively scheduled for 2023-11-21.

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
