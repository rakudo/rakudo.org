%% title: Rakudo Star 2014.01 released
%% date: 2014-01-31

<h1>Announce: Rakudo Star Release 2014.01</h1>
<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the January 2014 release of "Rakudo Star", a useful and usable
distribution of Perl 6. The tarball for the January 2014 release is
available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>. A Windows .MSI
version of Rakudo star is available in the downloads area as well.

In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes <a>release 2014.01</a> of the
<a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 5.9.0 of the <a href="http://parrot.org">Parrot Virtual
Machine</a>, plus various modules, documentation, and other resources
collected from the Perl 6 community.
<pre><code>https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.01.md
</code></pre>
Some of the new features added to this release include:
<ul>
    <li>The eval sub and method are now spelled EVAL</li>
    <li>Numeric.narrow to coerce to narrowest type possible</li>
    <li>Can now supply blocks with multiple arguments as sequence endpoints</li>
    <li>Method calls and hash/list access on Nil give Nil</li>
</ul>
This release also contains a range of bug fixes, improvements to error
reporting and better failure modes.

Please note that this release of Rakudo Star does not support the JVM
nor the MoarVM backends from the Rakudo compiler. While the other backends
mostly implement the same features as the Parrot backend, many bits are
still missing, most prominently the native call interface.
We hope to provide a JVM-based and MoarVM-based Rakudo Star releases soon.

There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>threads and concurrency (in work for the JVM backend)</li>
    <li>Unicode strings at levels other than codepoints</li>
    <li>interactive readline that understands Unicode</li>
    <li>non-blocking I/O</li>
    <li>much of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo and
other Perl 6 implementations.

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