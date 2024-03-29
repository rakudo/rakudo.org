%% title: Announce: Rakudo compiler, Release #167 (2023.12)
%% date: 2023-12-21

On behalf of the Rakudo development team, I’m very happy to announce the
December 2023 release of Rakudo #167. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2023.12:

+ Improvements:
    + Don't set callers $/ with Grammar.parse in 6.e [8542ad21]
    + Move close to complete generic instantiation [fc2a5f64][97e6a436]
      [7739c0d0][aa83d509][2df1be5d][4076476f][eabc07c3][d8a063ae][056f9c33]
      [3d05492c][b4fd57bf][0b544d6d][5190dcc6][9614026d][5f9f094a][63f24857]
      [2e453b9c][eef5734b][aa8fbd5b][4218796a][f8a17994][67194314][f4cad695]
      [b9c09832][21d35888][44f529da][fcd787c1][7e73023b][510c3156][c22439e5]
      [5f8cf56f][fe40b8e8][09429104][c6890b40][c032e2f8][18d626bd][3c88689b]
      [c6f4a09c][6c0b54e5][15a787cb][4d38d698][69dd7d66][52aec48c]

+ Additions:
    + Make the Format class a Callable [bd43800b]

+ Fixes:
    + Fix rare deadlocks during supply setup [d31e4f62][6fe16327]
    + Make sure :chomp is honoured on $*ARGFILES.lines [8dca71e8]
    + Make sure if 1..0 { } does NOT fire in 6.e [4e75ae14]
    + Make Match.print more aware of its surroundings [5606fb65]

+ Removals:

+ Internal:
    + Microoptimize Promise.then(:synchronous) [ecea4878]
    + Streamline Grammar, largely de-nqpify [ca1fd753]
    + Simplify internal QX sub [e22987f4]

+ RakuAST Development:
    + some work was done on RakuAST development, but the number of passing
      spectest files did not increase this round.

      [eb032f03][3827870b][7584bd1c][1604909b][4f17fb52][b06e170b][17e3d0e6]
      [b0c03083][cc57b408][50df535c][1a18183a][1410e712][5a51c6f2][68927535]
      [d62f7780][2d1ce780][497899ee][af27c2f6]

The following people contributed to this release:

Vadim Belman, Elizabeth Mattijsen, Patrick Böker, Daniel Sockwell,
Márton Polgár, Nick Logan, Osei Poku, Richard Hainsworth, andemark

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

The next release of Rakudo (#168), is tentatively scheduled for 2024-01-26.

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
