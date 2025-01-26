%% title Announce: Rakudo compiler, Release #179 (2025.01)
%% date: 2025-01-25

On behalf of the Rakudo development team, I’m very happy to announce the
January 2025 release of Rakudo #179. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2025.01:

+ Improvements:
    + Add lower-bounding for the revision-gated trait [7c7ad5bd][0e9a2d73]
    + Pod::To::Text: Sort enum pairs by value [c7004109]
    + Improve throughput and reliability of CI::PrecompilationRepository [b6242f4b][4919b647]
    + Get PRs working for everyone [b6ea5783]
    + Make native arrays Cool (e.g. allow native arrays to be
      endpoints for Ranges [17fe51b8][8f38af87]
    + Add proper support for regexes to multi-needle .split [77c4c64e][bea1f099]
    + Final step of re-imaginining .trans [d7feae2f][e5a715ab][bcd7beaf][f055c31e]
    + Update documentation of recently added syscalls [3265ff3b]
    + Optimize Str.(words|lines) [603b07ac]

+ Additions:
    + Add VM.ownup to produce backtraces of all threads and exit [7ef44ef5][70d66b98]
    + Provide adverbial forms of map [24b4001e][720cd014]

+ Fixes:
    + Fix obsolete reference to CompUnit::PrecompilationStore::File [b2dd1185]
    + Make sure strarray.raku doesn't die [c0c2e01f]
    + Move precomp docker host ubuntu 24.04 -> 20.04 [eba9332d]
    + Use .raku suffix in doc of install-dist instead of .p6 [a66b2e16]

+ Internal:
    + Run full spectest in CI (#5747) [ebecbeaf]
    + Remove unnecessary stubs [3559bb9b]
    + Move test file that dies on JVM to t/09-moar [4aa8d331]
    + [JVM] Add extra check for GLOBAL being null (#5710) [e7f9223c]
    + [JVM] Reduce backend-specific code in find_best_dispatchee (#5714) [8991173f]
    + Remove playful "just yet" in error messages [87f0e37f]
    + Remove now unnecessary R:I:ALL_TYPE method [26fbd4c3]
    + Only call ensure-sc if there is a descriptor [70c268ba]

+ RakuAST Development:
    + Make  A, P, and Δ = Capital Greek Delta) produce AST like markup X [f57a989a]


The following people contributed to this release:

Elizabeth Mattijsen, Will Coleda, Patrick Böker, Daniel Green,
Richard Hainsworth, Timo Paulssen, Nick Logan, ab5tract,
Christian Bartolomäus, Samuel Young, Coleman McFarland, finanalyst,
Anton Oks, Joseph Brenner, Nicholas Clark, Stefan Seifert

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

The next release of Rakudo (#180), is tentatively scheduled for 2025-02-22.

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
