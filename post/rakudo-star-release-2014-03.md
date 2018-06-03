%% title: Rakudo Star 2014.03 released
%% date: 2014-04-01

<h1>Announce: Rakudo Star Release 2014.03</h1>
<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the March 2014 release of "Rakudo Star", a useful and usable
distribution of Perl 6. The tarball for the March 2014 release is
available from <a title="http://rakudo.org/downloads/star/" href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>. A Windows .MSI
version of Rakudo star is also available at that location.

In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes [release 2014.03] of the
[Rakudo Perl 6 compiler], version 6.1.0 of the [Parrot Virtual
Machine], plus various modules, documentation, and other resources
collected from the Perl 6 community.

[release 2014.03]:
<a title=" https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.03.md" href=" https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.03.md"> https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.03.md</a>
[Rakudo Perl 6 compiler]: <a title="http://github.com/rakudo/rakudo" href="http://github.com/rakudo/rakudo">http://github.com/rakudo/rakudo</a>
[Parrot Virtual Machine]: <a title="http://parrot.org" href="http://parrot.orghttp://">http://parrot.org</a>

Some of the new features added to this release include:
<ul>
    <li>The core of Rakudo::Debugger is now part of Rakudo itself and works across all backends.</li>
    <li>"make" no longer itemizes its arguments.</li>
    <li>for-loops at the statementlist level are now sunk by default.</li>
    <li>better parsing of unspaces and formatting codes inside Pod blocks.</li>
    <li>Fix for for-loops to be properly lazy</li>
    <li>Numerous Pod parsing and formatting improvements</li>
    <li>@ as shortcut for @$, % as shortcut for %$</li>
    <li>list infix reductions no longer flatten</li>
    <li>Numerous compiler suggestion improvements</li>
</ul>
Please note that this release of Rakudo Star does not support the JVM
nor the MoarVM backends from the Rakudo compiler. While the other backends
mostly implement the same features as the Parrot backend, some bits are
still missing that lead to module build problems or test failures.
We hope to provide experimental JVM-based and MoarVM-based Rakudo Star
releases in April 2014.

There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>threads and concurrency (in work for the JVM and MoarVM backend)</li>
    <li>Unicode strings at levels other than codepoints</li>
    <li>interactive readline that understands Unicode</li>
    <li>non-blocking I/O</li>
    <li>much of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a title="http://perl6.org/compilers/features" href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo and
other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <a title="rakudobug@perl.org" href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a title="http://perl6.org/" href="http://perl6.org/">http://perl6.org/</a> for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources. A
draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in
the release tarball.

The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see
<a title="http://rakudo.org/how-to-help" href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a title="perl6-compiler@perl.org" href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.