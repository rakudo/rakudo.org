%% title: Announce: Rakudo compiler, Release #183 (2025.05)
%% date: 2025-05-17

On behalf of the Rakudo development team, I’m very happy to announce the
May 2025 release of Rakudo #183. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2025.05:

+ Improvements:
    + Some attribute access consistency changes (#5844) [b527cefc]
    + Allow MAIN args to reference imported names [28a1cdca][3e15093f]
    + Immortal threads now gist as such [3b4a3358]

+ Additions:
    + Initial stab at implementing IO::Path::readlink [f17a2dee]

+ Fixes:
    + MoarVM GC bugfix for special unwinds (such as LEAVE phasers) [8d8f7316]
    + Remove type specification by name in Parameter constructor [11be008b]

+ Internal:
    + Release Engineering improvements in docs, tooling [298fed53][cd4c360a][227f04b2]

+ RakuAST Development:
    + RakuAST: Implement interning of literals [2236c802][56d327d0][1758c96f][60803fae]
    + Testing that a submethod can access an attribute [f453670f]

The following people contributed to this release:

Will Coleda, Elizabeth Mattijsen, Timo Paulssen, Richard Hainsworth,
Tim Nelson, ab5tract, Stefan Seifert, finanalyst, Daniel Green, Jimmy Zhuo,
Justin DeVuyst, habere-et-dispertire, rir

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

The next release of Rakudo (#184), is tentatively scheduled for 2025-06-27.

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
