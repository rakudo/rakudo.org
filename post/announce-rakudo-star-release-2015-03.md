%% title: Update to Rakudo Star Release 2015.03
%% date: 2015-03-21

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the March 2015 release of "Rakudo Star", a useful and usable
distribution of Perl 6. The tarball for the March 2015 release is
available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.

This Rakudo Star release comes with support for the MoarVM
backend (all module tests pass on supported platforms) along with
experimental support for the JVM backend (the modules <code>Bailador</code>,
<code>Digest::MD5</code> and <code>Grammar::Profiler::Simple</code> are known to fail tests).

In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2015.03.md">release 2015.03</a> of the
<a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 2015.03 of <a href="http://moarvm.org/">MoarVM</a>, plus various
modules, documentation, and other resources collected from the
Perl 6 community.

Some of the new compiler features added to this release include:
<ul>
    <li>several renames of semi-internal methods. Please refer to <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2015.03.md">the Rakudo
2015.03 release notes</a> for the full list</li>
    <li>Allow <code>Buf.AT-POS</code> to return an l-value.</li>
    <li>Implement <code>method ^foo($) { ... }</code> syntax.</li>
    <li>Implemented <a href="http://doc.perl6.org/type/PairMap">PairMap</a> (the simple case only, for now).</li>
    <li>Implemented <code>.antipairs</code> (pairs with value =&gt; key).</li>
    <li>Implemented <a href="http://doc.perl6.org/type/Any#method_pairup">pairup</a> for creating pairs from lists.</li>
    <li>Implemented <code>LEXICAL</code>, <code>OUTERS</code> and <code>CALLERS</code> pseudo-packages</li>
    <li>Add <code>array[T]</code>, usable for native <code>int</code>/<code>num</code> (MoarVM only for now)</li>
    <li>Other native improvements, e.g. <code>my int $a; $a++</code></li>
    <li>Implement <code>IO::Path.resolve</code> on r-m/POSIX</li>
</ul>
In future, the <code>nqp::</code> namespace willl only be available after a declaration
like <code>use nqp;</code>.

Changes to modules included in Rakudo Star:
<ul>
    <li><a href="https://github.com/perl6/DBIish">DBIish</a> supports local Sockets on mysql,
and now correctly handles returned NULL values in the Pg backend</li>
    <li><a href="https://github.com/perl6/doc">doc</a> ships with much more documentation</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>threads and concurrency (in progress)</li>
    <li>Unicode strings at levels other than codepoints</li>
    <li>interactive readline that understands Unicode</li>
    <li>non-blocking I/O (in progress)</li>
    <li>much of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo's
backends and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources. A
draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in
the release tarball.

The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see
<a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a>
mailing list, or join us on IRC #perl6 on freenode.