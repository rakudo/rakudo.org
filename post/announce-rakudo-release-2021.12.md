%% title: Announce: Rakudo compiler, Release #152 (2021.12)
%% date: 2021-12-23

On behalf of the Rakudo development team, I’m very happy to announce the
December 2021 release of Rakudo #152. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2021.12:

+ Deprecations:

+ Additions:
    + Add is-wrapped method to Routine (#4579) [99bc766e]
    + Introducing RAKUDO_PRECOMPILATION_PROGRESS [d88d1cc0]
    + Add In Memoriam stub for David H. Adler [dba8dbb0]
    + Add a IterationBuffer.new(iterable) candidate (#4599) [ad145b4c]
    + Add IterationBuffer.unshift/prepend methods (#4641) [259d29b3]
    + Add knowledge about MacOS Monterey [1fc8cce3]
    + Add the ability to display any default values in sub MAIN to the default
      USAGE message [0b286ed2]

+ Changes:
    + Remove tai-offset-nanos from CORE::.keys [a8c579b6]
    + Make .subst-mutate faster by simplifying proto [d619e026]
    + Make .match faster by simplifying proto [2204c7cb]
    + Make .subst upto 1.9x as fast [0dae67a6]
    + Remove redundant multi method list(QuantHash:U:) [8fd65670]
    + Replace some empty TWEAKs by "is built"s [82a9ca4f]
    + Better cope with megamorphic callsites after new-disp [85df0ba1]
      [3229ef12][2df1d01a][091005f3][9ad99eb9][441e103f][0d84699c][5de7faf4]
      [e4b0ddf9][1fbeb4c6][f9aa1d65]
    + Support Terminal::LineEditor in the Raku REPL [5db6a344][138aca10]
      [694f648b][7b188795][15a13ffc]
    + Change SetHash.values() from `is rw` to `is raw` [65987460]
    + Very simple ACCEPTS for Int:D vs Int:D (#4625) [57387455]
    + Get either parametric or concrete roles in MRO when requested [641a86d5]
      [832a8476][bf2a07fb][856f1af0]
    + Create checksums for release files [8cb674ac]
    + Clean up list of people to ask for rakudo.org access [a31db709]
    + Micro-optiize IterationBuffer.append(IterationBuffer:D) [92c490ee]
    + Remove support for use experimental :collation (#4616) [eb837dee]
    + New disp nativecall (#4629) [f67fb4ab][30a7e94e][889754d5][d46a826f]
      [ad5cc86f][f20d448e][452781f3][624f3a7a][02539e96][3e3b5ca8][01470de8]
      [a6633242][d5b98cf7]
    + Update Release Guide to have actual information (#4639) [b3b4ca21]
    + Make Date.new(year,month,day) about 40% faster [74c8c861]
    + Make Telemetry::snap(:head) return the filename [ad1fddbb]
    + Make the max number of threads depend on number of cores (#4652)
      [afc56429]
    + Make Inline::Perl5 installation suggestion complete [4e23452c]
    + Speedup Instant.Num by manual inlining [4985f8a6][8642808e]
    + Add "ceiling" as a suggestion for "ceil" [57adbb1e]
    + Reduce number of nqp::cpucores calls (#4659) [c7e456d3]

+ Fixes:
    + Make enums and Bool throw on .new [42738187]
    + Use distribution specific comp unit ids in CURFS [7ab396a0]
    + Fix X::Assignment::RO message when assignment to Nil is attempted
      [1ea47322][15ed1566]
    + Make sure return value of Str.match is threadsafe [1d0a903a]
    + Fix gisting Buf or Blob parameterized with an unsized type [62c04646]
    + Use better default for nativesize in Buf/Blob gist [e99e2742]
    + Clarify let and temp operators [1fec0ef2]
    + Make StrDistance.ACCEPTS also a multi [3ef09a72]
    + Make sure IO::Path.slurp returns failures [ce0d31fb]
    + Make sure ParallelSequence is included in shas [e98e17da]
    + Fix handling of constrained Mu parameters in signature smartmatching
      [4329a995][c6e24eba][034768de][e6a68a94][088e0c4e]
    + Prevent rebinding for readonly parameters [PR #4536] [ea42b3df][5e1f25d9]
      [32e307b6][90307035][aeaf6f5e]
    + Fix segfaults when multiple threads initialize dynamics [db136bc5]
    + Make concurrent access to an enum by value safe (#4634) [4c238bdc]
    + Fix CATCH blocks setting $! leading to serialization errors with BEGIN
      time exceptions [b994c6bb]
    + Fix stupid copy-pasto, fixes #4660 [57801d59]
    + Minimal change for fix on MacOS Monterey [f029ac83]
    + Don't suggest method of the same name as "not found" [27082897][58c3d950]
      [d4914edd][af0153df][545f8d0e]
    + [JVM] Don't let signal(SIGINT) break the REPL [1ef7019b]
    + [JVM] Skip or todo failing tests for JVM [d301860e]
    + Restore larger limit for using string_to_int on 64bit systems [7772b737]
    + Fix segfaults due to concurrent hash access in parallel module loading
      [835d0f12]
    + Fix removing proxies in native calls [f0713c42][a6fad879]

+ Internal:
    + Lift $!do reading out of `for` loop body [560ff8c6]
    + Fix unnecessary boxing by routines with native return types [6bd955e6]
    + Prepare extops for a MoarVM internals change [3127861c]
    + Reduce visibility of Str internal classes [380c7758]
    + Only simplify protos on the MoarVM backend [c50bc998]
    + Add a missing MVMROOT in extops [ab02205e]
    + Remove an unnecessary decont on a hot path [24333b11]


The following people contributed to this release:

Stefan Seifert, Elizabeth Mattijsen, Jonathan Worthington, Daniel Green,
Vadim Belman, Christian Bartolomäus, Nicholas Clark, Timo Paulssen,
Daniel Sockwell, Will "Coke" Coleda, Peter du Marchie van Voorthuysen,
Geoffrey Broadwell, Patrick Böker, Altai-man, JJ Merelo, Ben Davies,
Smylers, Tom Browder, Clifton Wood, Justin DeVuyst, Luis F. Uceta,
Marc Chantreux, Nick Logan, Nova Patch, Richard Hainsworth, Stoned Elipot,
Trevor Stone, Wenzel P. P. Peppmeyer, rir

This release implements 6.c and 6.d versions of the Raku specification.
6.c version of the language is available if you use the `use v6.c`
version pragma, otherwise 6.d is the default.

Upcoming releases in 2022 will include new functionality that is not
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

The next release of Rakudo (#153), is tentatively scheduled for 2022-01-21.

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
