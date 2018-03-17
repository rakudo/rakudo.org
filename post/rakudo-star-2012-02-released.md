%% title: Rakudo Star 2012.02 released
%% date: 2012-02-28

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the February 2012 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the February 2012 release is available from &lt;<a href="http://github.com/rakudo/star/downloads">http://github.com/rakudo/star/downloads</a>&gt;.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes release #49 of the Rakudo Perl 6 compiler [1], version 4.1 of the Parrot Virtual Machine [2], and various modules, documentation, and other resources collected from the Perl 6 community.

Here are some of the major improvements in this release over the previous distribution release.
<ul>
    <li>The FatRat type is implemented, and Rat arithmetic now properly defaults to Num if the denominator is too big</li>
    <li>Object hashes are implemented, and can be declared with the syntax my %h{Any} (for a hash with keys of type Any)</li>
    <li>The &lt;Some::Grammar::rulename&gt; syntax is now implemented in regexes; &lt;foo&gt; can also be used to call predeclared lexical rules</li>
    <li>The Int($x) coercion syntax is implemented</li>
    <li>&amp;rename and &amp;copy are now implemented</li>
    <li>Improvements to the reduction meta-operator (order of magnitude faster, some parsing issues fixed)</li>
    <li>The &lt;prior&gt; regex built-in is now available, and matches whatever the last successful match matched</li>
    <li>A $match.make(...) method is available to set the AST for a match object not stored in the $/ variable</li>
    <li>Improved backtraces</li>
</ul>
This release also contains a range of bug fixes, improvements to error reporting and better failure modes. Many more exceptions are thrown as typed exceptions.

Due to continued evolution of and convergence with the Perl 6 spec, there are some changes to existing functionality that may affect your code:
<ul>
    <li>You may no longer use the $.x form in submethods and attribute initializers, as per spec; use the non-virtual $!x instead.</li>
    <li>The LHS of the xx operator is now thunked</li>
    <li>.conjugate is now called .conj</li>
    <li>Enumeration values .gist to just the key, not the full name</li>
    <li>An empty Buf is now False in boolean context</li>
</ul>
Currently, we have maintained backwards compatibility with some changed pieces of syntax, but will drop them in an upcoming release:
<ul>
    <li>"&lt;...&gt;" in proto regex bodies; now this should be written "*"</li>
    <li>The use of "**" with a separator in regexes; this is now done by using "%" or "%%" on another quantifier</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:
<ul>
    <li>pack and unpack</li>
    <li>macros</li>
    <li>threads and concurrency</li>
    <li>Unicode strings at levels other than codepoints</li>
    <li>pre and post constraints, and some other phasers</li>
    <li>interactive readline that understands Unicode</li>
    <li>non-blocking I/O</li>
    <li>much of Synopsis 9</li>
</ul>
There is a new online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo Star 2012.02 and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at &lt;rakudobug@perl.org&gt;.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. An updated draft of a Perl 6 book is available as
&lt;docs/UsingPerl6-draft.pdf&gt; in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see &lt;<a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>&gt;, ask on the perl6-compiler@perl.org mailing list, or join us on IRC #perl6 on freenode.

[1] <a href="http://perl6.org/compilers/features">http://github.com/rakudo/rakudo</a>
[2] <a href="http://parrot.org/">http://parrot.org/</a>