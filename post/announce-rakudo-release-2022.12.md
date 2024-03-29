%% title: Announce: Rakudo compiler, Release #158 (2022.12)
%% date: 2022-12-04

On behalf of the Rakudo development team, I’m very happy to announce the
December 2022 release of Rakudo #158. Rakudo is an implementation of
the Raku[^1] language.

The source tarball for this release is available from
<https://rakudo.org/files/rakudo>.
Pre-compiled archives will be available shortly.

New in 2022.12:

+ Improvements:
    + Improve flow of calling set-env.sh from a script [57337212]
    + Make the "needle (elem) list" message more clear [958537b1]
    + Make X::TypeCheck::Assignment message better [05d60e21]
    + Simplify X::TypeCheck::Assignment for containers [1e30b43c]

+ Additions:
    + Allow for --no-foo as alternative to --/foo when
      %SUB-MAIN-OPTS<allow-no> is set [61617b12]
    + Allow for -j2 as an alternative to --j=2 when
      %SUB-MAIN-OPTS<numeric-suffix-as-value> [388924d6]
    + Allow for .skip(produce,skip,produce,skip,...) in 6.e [2a1ace84]
    + Introduce "nano" term in 6.e [10feda11][feb97323]
    + Add IO::Path.created returning the Instant a path was created [dbf035d8]
    + Introduce // as a definedness prefix operator in 6.e [d05f7eed]
    + Add method Any.snitch in 6.e [10066021]
    + Introduce Dateish.days-in-year method [3d181c89][4d43bbf9][67513cb8]
    + Add rotor-like capability to Str.comb in 6.e [84abeb52]
    + Make sure Type.are also works [983cf3ec]
    + Implement IO::Path.chown and chown() [1e02f566]

+ Efficiency:
    + Add a lot of uint candidates for a lot of ops [47f9b286]
    + Add proper support for uint comparisons [25c76aed]

+ Fixes:
    + Make List:D.iterator a multi so that List:U.iterator works [5ad2c0c6]
    + Add missing Allomorph.words method [59a34853]
    + Revert "Add CUR::Staging.candidates method" to fix issue with
      precompiling modules for packaging [9360c650][6937da17][454752e3]
    + Implement nominalizable transparency for definites [71de2232][c915b07c]
    + Make World's `is_type` method more reliable [13f7416c]
    + Don't blindly make a Version object for vN [7ddb90ce]
    + Add missing $obj? to Perl6::Metamodel::JavaHOW.archetypes [d059921b]
    + Fix role parameterization over generics [94f3028e]
    + Get job done well for coercive nominalizeables [9e18b391]
    + Make generics work with return type in signature [a3021944][47c35cab]
      [4cdb5585]
    + Make (1,2,3,4,1,2).QuantHash>>-- work [63d03eb8][d0ec99a8]
    + Report deprecated subs/methods that are hidden-from-backtrace [43a6575b]
    + Feeds require .append to work, not .push [29eadbb2]
    + Make feed error message more comprehensible [2070ceeb]
    + Fix module installation writing precomp files into the wrong precomp
      store [cc7193d0]
    + Fix NEXT / LEAVE phaser interaction on JVM [ce1af0fa]
    + Fix definite type parameterization [07164fec] [8a7d84c5]
    + Fix a regression introduced by new 'dispatch' path related to
      smartmatch [35b180b8]
    + Make sure that Array.raku doesn't die on a lazy iterator [2037ffba]
    + Make sure .elems don't mention the class [3859d6cb]
    + Fix smartmatch in EVAL regression [0a9e2014][2702b001]
    + Avoid loss in precision on FatRat .Str conversion [441e71a5]
    + Revert "Simplify setting up standard handles" to fix seemingly
      unrelated issue with IO::Notifications not working [64f552f3]

+ Removals:
    + Remove nqp::p6client* ops [126aa804]

+ Internal:
    + Tune Java in response to nqp's (de)serialization rewrite [018e549b]
      [5a57f84e][18122e02][a78033f1]
    + Reuse $v-how instead of calling HOW again [191964c5]
    + Change internal API of RI:Snip [feb04dbe]
    + Move the iterator logic of Str.comb(N) to RI::Ngrams [e826dbdc][d12461b0]
    + Actions: Avoid repeated $<sym> eq 'S' [bc3b5824]

The following people contributed to this release:

Elizabeth Mattijsen, Vadim Belman, Patrick Böker, Ben Davies,
Will "Coke" Coleda, Daniel Green, Christian Bartolomäus, Will Coleda,
Tom Browder, Stefan Seifert, Altai-man, rir, 2colours, Márton Polgár,
Salvador Ortiz, Daniel Mita, Justin DeVuyst, Timo Paulssen, Daniel Sockwell,
Humberto Massa, Jonathan Worthington, Juan Julián Merelo Guervós,
Lucien Grondin, Madeleine Goebel, Mathias Reitinger, Michael Ruigrok,
barracuda156, hythm, yabobay

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

The next release of Rakudo (#159), is tentatively scheduled for 2023-02-03.

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
