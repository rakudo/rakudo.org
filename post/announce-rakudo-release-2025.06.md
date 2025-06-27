%% title: Announce: Rakudo compiler, Release #184 (2025.06)
%% date: 2025-06-27

On behalf of the Rakudo development team, I’m very happy to announce the
June 2025 release of Rakudo #184. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2025.06:

+ Improvements:
    + New script wrappers [7f956cb9][dee697e3][1e088ac8][bd5e8474][913119bb]
      [eb8c6245][170e2afc][ee4a4bf0][7e415812][bd031b5d][af1f24fa][15734e26]
      [0659b0b1][6047dc81][ad3c6a9b][fcdcb81a][f7483979][22251b83][f3076f14]
    + Better error when p6invokeunder gets passed wrong arg types [67c1b518]
    + Remove return constraint from atanh/acotanh num sub candidates [4768ab58]
    + Make sure sub sqrt num candidate works correctly on 6.e [f6a3472c]
    + Make Enumeration:D.clone return invocant [398ac8a5]
    + Make $*PROGRAM-NAME *always* assignable [60a72b05]
    + Use $*PROGRAM instead of $?FILE in 'use lib' [15ab56c4]
    + Don't use two spaces after . or ? [5d9f489d]

+ Additions:

+ Fixes:
    + Update IRC log links [bedb0cc0]
    + Fix weird interaction in 6.e with string concatenation in ^parameterize
      [7bf0d52b]
    + Fix NativeCall::Dispatcher in 6.e [c262ef0b]
    + (Implicitely) specifying Mu for actions means: no actions [be9b0742]
    + Make sure coercion don't introduce a container [036a8887]
+ Internal:

    + Return to original approach of triangle METAOP_REDUCE_LIST [9564c4fd]
    + Change Linux pre-built release pipeline, CentOS 7 -> Ubuntu 16.04
      [72bf08fc]
    + Give $*KERNEL.raku a more meaningful representation [ea8a5b32]
    + Remove a lot of uses of IMPL-WRAP-LIST [283f6bf6]
    + Added some comments to the sanity tests to better explain what each test
      is testing [07a15c9d]
    + Freeze NativeCall::Dispatchers to 6.d [e591b023]
    + Use list literal instead of array literal for nl-in default value
      [fcc742eb]

+ RakuAST Development:
    + RakuAST: change key generation on based integers [75e3952a]
    + Enhance feedback around named subset parameters [5f6d6e05]
    + Call SET-NODE-ORIGIN from Actions' parameter method [46ed7b40]
    + Add test for infix:<,>(42) behaviour [94ebbccd][79a332b5]
    + Force new subset-type-without-default test to die [b29ab0f5]
    + RakuAST: fix worry on m:s/ foo bar / [7f627de3]
    + RakuAST: fix sunk worries on ==> and <== [1464a0fb]
    + RakuAST: Alternate fix for #5883 [2ec173ab]
    + RakuAST: rename "can-be-sunk" to the more appropriate "is-pure" [bffe2377]
    + RakuAST: Remove a lot of uses of IMPL-UNWRAP-LIST [283f6bf6][a317ba42]
    + RakuAST: Bootstrap rakuast fix no lexical with name $_ [bc0d70bd]
      [fae30cbc][145e0144][6b62c06b][12871a13][0c1a6993][44da2e48][10473ffd]
    + Fix "This type (RakuAST::ArgList) does not support elems" in make test
      [d8486be9]
    + RakuAST: add origin source file path to bytecode [313dfb7d]
    + RakuAST: introduce $?SOURCE and $?CHECKSUM [a7453b1d]
    + RakuAST: move checking of RAKUDO_OMIT_SOURCE to main.nqp [ab0231a0]
    + RakuAST: Fix unable to pass multiple tags to a use statement [4fb4ae96]
    + RakuAST: micro opt in the "do-nibbler" logic [4cfcb18e]
    + RakuAST: make error reporting at compile time more reliable [58e26f3b]
    + RakuAST: make RakuDoc::To::RakuDoc work on declarator docs [5341a3df]
    + RakuAST: micro-opt for collecting RakuDoc from source [0eef26e1]
    + RakuAST: make RAKU_LANGUAGE_VERSION=vxxx actually work [3dbf9c83]
    + RakuAST: just skip the synthetic AST tests [e5f14526]
    + RakuAST: fix bitrotted L10N support [1d69f5a7]
    + RakuAST: update L10N generation logic [c59b4eeb]
    + RakuAST: make localizations also create executor script [62b53778]
    + RakuAST: make L10N executor support optional [6a2b6931]
    + RakuAST: add proper support for localization of core enums [717b2c95]
    + Make MetaPostfix::Hyper a WhateverApplicable [2c9ad45c]
    + RakuAST: actually handle localization of core enums [f2ffa8fb]
    + RakuAST: add RakuAST::Enum class for handling enums [78669881]
    + RakuAST: final fixes for handling enums specifically [f30501c4]
    + RakuAST: rename RakuAST::Enum to RakuAST::Term::Enum [92068d9b]
    + RakuAST: don't allow upping language versions in EVAL [8263885c]
    + RakuAST: ignore RAKU_LANGUAGE_VERSION in EVAL [72cdcde4]
    + Adjust xx-fixed-in-rakuast.rakutest [498bb93a]
    + RakuAST: make sure $?FILE is a relative path [840e3eaf]
    + Remove test for now fixed #5599 [8b10ad12]
    + RakuAST: Mark failing tests in RakuAST also as TODO [b9765b47]
    + RakuAST: some maint / dev on RakUAST::L10N [62915529]
    + RakuAST: update all files in "bin" directory [dd636945]

The following people contributed to this release:

Elizabeth Mattijsen, Geoffrey Broadwell, Patrick Böker, Coleman McFarland,
Daniel Green, Stefan Seifert, Will Coleda, ab5tract, Timo Paulssen,
Tom Browder, Daniel Sockwell, Jan-Olof Hendig, Leon Timmermans,
Richard Hainsworth, habere-et-dispertire, ivanyoung10

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
