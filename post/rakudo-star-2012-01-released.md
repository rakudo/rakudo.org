%% title: Rakudo Star 2012.01 released
%% date: 2012-01-28

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the January 2012 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the January 2012 release is available from <a href="http://github.com/rakudo/star/downloads">http://github.com/rakudo/star/downloads</a>.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes release #48 of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a> [1], version 3.11 of the <a href="http://parrot.org/">Parrot Virtual Machine</a> [2], and various modules, documentation, and other resources collected from the Perl 6 community.

Significantly, this is the first distribution release based on the "nom" (New Object Model) development branch of Rakudo. This work has been carried out with the aim of increasing performance and correctness, as well as providing a better base for taking on a
range of missing features. Here are some of the major improvements in this release over the previous distribution release.
<ul>
    <li>Greatly improved performance in many areas. For some scripts, this release offers an order of magnitude performance improvement.</li>
    <li>POD6 support, including the $=POD variable to make the POD available at runtime and a --doc option to get at the POD</li>
    <li>The Int type now has big integer semantics</li>
    <li>Initial work on native types, which can be used to write much more efficient code</li>
    <li>LTM-driven protoregexes</li>
    <li>Meta-programming support, including custom meta-classes, overriding method dispatch and much more</li>
    <li> Exception handling is much closer to the specification, and thus much more useful</li>
    <li>Better package handling, including true separate compilation, lexical packages and better nested package handling</li>
    <li>An optimizer, which improves generated code as well as catching a range of issues at compile-time that previously made it to runtime</li>
    <li>Backslash sequences in character classes</li>
    <li>Stubbed methods from roles are now required, providing interface style functionality</li>
    <li>Typed arrays and hashes, as well as supporting for binding to array and hash elements</li>
</ul>
Due to improvements in the Perl 6 language specification, and changes to Rakudo to track them, some existing code will need changes. Here are some of the major differences to be aware of.
<ul>
    <li>Attributes can no longer be initialized using "new" unless they are declared as having an accessor; either give them one or write a BUILD submethod</li>
    <li>The proto keyword is no longer used to declare a multi-dispatch fallback</li>
    <li>You may no longer do 'filename'.lines; use 'filename'.IO.lines</li>
</ul>
We have maintained backwards compatibility with some changed pieces of syntax, but will drop them in an upcoming release:
<ul>
    <li>"&lt;...&gt;" in proto regex bodies; now this should be written "*"</li>
    <li>The use of "**" with a separator in regexes; this is now done by using "%" or "%%" on another quantifier</li>
</ul>
While this release does contain a great number of improvements, unfortunately we have regressed in a few places. Of note:
<ul>
    <li>Some cases of auto-vivification do not work</li>
    <li>The binding of a capture against a signature literal is broken</li>
</ul>
We will be working to restore this functionality for future Rakudo Star releases; if you depend heavily on it, you may wish to stick with the previous Rakudo Star release for
another month.

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
There is a new online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo Star 2012.01 and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at &lt;rakudobug@perl.org&gt;.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. An updated draft of a Perl 6 book is available as &lt;docs/UsingPerl6-draft.pdf&gt; in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see &lt;<a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>&gt;, ask on the perl6-compiler@perl.org mailing list, or join us on IRC #perl6 on freenode.

[1] <a href="http://github.com/rakudo/rakudo">http://github.com/rakudo/rakudo</a>
[2] <a href="http://parrot.org/">http://parrot.org/</a>