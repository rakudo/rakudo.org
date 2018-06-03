%% title: Rakudo Star 2013.12 released
%% date: 2013-12-25

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the December 2013 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the December 2013 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>. A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2013.12.md">release 2013.12</a> of <a href="http://github.com/rakudo/rakudo">the Rakudo Perl 6 compiler</a>, version 5.9.0 of the <a href="http://parrot.org">Parrot Virtual Machine</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new features added to this release include:

<ul>
<li>The Whatever Star (<code>*</code>) now works inside chain operators like comparisons.</li>
<li>Private attributes from roles are now visible in the classes they apply to.</li>
<li>Memory and speed improvements for <code>ListIter</code> and <code>List.combinations</code>, respectively.</li>
<li>Improvements to the execution of regexes.</li>
</ul>

This release also contains a range of bug fixes, improvements to error
reporting and better failure modes.

Please note that this release of Rakudo Star does not support the JVM
backend from the Rakudo compiler. While the JVM backend mostly implements
the same features as the Parrot backend, many bits are still missing,
most prominently the native call interface.
We hope to provide a JVM-based Rakudo Star release soon.

The following notable features have been deprecated or modified from previous
releases due to changes in the Perl 6 specification, and are planned to be
removed or changed as follows:

<ul>
<li>All unary hyper ops currently descend into nested arrays and hashes. In the future, those operators and methods that are defined "nodal" will behave like a one-level map.</li>
</ul>

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

There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo and
other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as <code>docs/UsingPerl6-draft.pdf</code> in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC <code>#perl6</code> on freenode.