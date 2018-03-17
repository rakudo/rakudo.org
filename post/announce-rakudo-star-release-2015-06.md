%% title: Announce: Rakudo Star Release 2015.06
%% date: 2015-07-01

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the June 2015 release of "Rakudo Star", a useful and usable
distribution of Perl 6. The tarball for the June 2015 release is
available from <a title="http://rakudo.org/downloads/star/" href="http://rakudo.org/downloads/star/" target="_blank">http://rakudo.org/downloads/star/</a>.

This Rakudo Star release comes with support for the MoarVM
backend (all module tests pass on supported platforms).

In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes <a href=" https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.06.md" target="_blank">release 2015.06</a> of the
<a href="http://github.com/rakudo/rakudo" target="_blank">Rakudo Perl 6 compiler</a>, version 2015.06 of <a href="http://moarvm.org/" target="_blank">MoarVM</a>, plus various
modules, documentation, and other resources collected from the
Perl 6 community.

Other Rakudo Perl 6 Comiler changes included in this release:
<a href=" https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.04.md" target="_blank"> https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.04.md</a>
<a href=" https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.05.md" target="_blank"> https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.05.md</a>
<a href=" https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.06.md" target="_blank"> https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.06.md</a>

Some of the new compiler features added to this release include:
<ul>
    <li>"0" (0 as a string) is now True, no special-casing anymore</li>
    <li>an Int() coercion type in a multi now creates two candidates: Any and Int</li>
    <li>native arrays</li>
    <li>starts-with/substr-eq/ends-with for comparing strings inside other strings</li>
    <li>where constraints on variable and attribute declarations</li>
    <li>'is rw' parameters implemented for native subs (they get passed as a pointer)</li>
    <li>use Foo:from&lt;Perl5&gt; and EVAL $code, :lang&lt;perl5&gt; are now supported as long as Inline::Perl5 is installed. Allows passing most of S01 spec tests.</li>
    <li>NFG, NFC, NFD, Uni</li>
    <li>"unit" declaration needed for blockless packages</li>
    <li>Various API changes for the Great List Refactor, such as...
<ul>
    <li>  'for' loops not longer flatten; use 'for flat' for that</li>
    <li>  .map no longer flattens, map as a listop does. Use .flatmap to get the old behavior</li>
    <li>  Likewise other methods that used to flatten their invocant no longer do: all, any, one, none, unique, squish, min, max, minmax, classify, and categorize</li>
    <li>  Nil no longer iterates like the empty List. Use () or Empty instead.</li>
</ul>
</li>
    <li>.pick($n)/roll($n) now always return lists, even when $n == 1</li>
    <li>The "is cached" trait no longer works on methods, throws a NYI instead</li>
    <li>Method .map should be used instead of .for</li>
    <li>The REPL is strict by default now, that leaves only '-e' lines to be lax</li>
    <li>Implement new @*INC handling (about 30% faster startup time) (bare startup time is now below 100 ms on some machines)</li>
    <li>Implemented CUnions which map to the union C type definition for NativeCall</li>
    <li>Implemented HAS declarator for attributes to mark it embedded into the CStruct or CUnion</li>
    <li>Lexical pragma 'use trace' now outputs statements on STDERR</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:
<ul>
    <li> advanced macros</li>
    <li> non-blocking I/O (in progress)</li>
    <li> much of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a href="http://perl6.org/compilers/features" target="_blank">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo's
backends and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <a href="mailto://rakudobug@perl.org" target="_blank">rakudobug@perl.org</a>.

See <a href="http://perl6.org/" target="_blank">http://perl6.org/</a> for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources. A
draft of a Perl 6 book is available as <a href="https://github.com/rakudo/star/raw/master/docs/UsingPerl6-draft.pdf" target="_blank">docs/UsingPerl6-draft.pdf</a> in
the release tarball.

The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see
<a href="http://rakudo.org/how-to-help" target="_blank">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto://perl6-compiler@perl.org" target="_blank">perl6-compiler@perl.org</a>
mailing list, or join us on <a href="http://webchat.freenode.net/?channels=%23perl6&amp;uio=d4" target="_blank">IRC #perl6 on freenode</a>.