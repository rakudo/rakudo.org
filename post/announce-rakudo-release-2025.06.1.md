%% title: Announce: Rakudo compiler, Release (2025.06.l)
%% date: 2025-06-30

On behalf of the Rakudo development team, I’m announcing an
out-of-schedule release of the Rakudo compiler.
Rakudo is an implementation of the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2025.06.1:

+ Improvements:

+ Additions:

+ Fixes:
    + Script wrapper fixes [2223dc4c][2d60b201]
    + Fix `raku -V` on strange non-standard MacOS [74d02b5a]

+ Internal:

+ RakuAST Development:
    + RakuAST: remove RakuAST::L10N [58a7b820]

The following people contributed to this release:

Justin DeVuyst, Patrick Böker, Elizabeth Mattijsen, Richard Hainsworth,
Will Coleda

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

The next release of Rakudo (#185), is tentatively scheduled for 2025-07-25.

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
