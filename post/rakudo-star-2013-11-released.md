%% title: Rakudo Star 2013.11 released
%% date: 2013-11-24

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the November 2013 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the November 2013 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>. A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.</p>

<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2013.11.md">release 2013.11</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 5.9.0 of the <a href="http://parrot.org">Parrot Virtual Machine</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.</p>

<p>Some of the new features added to this release include:</p>

<ul>
<li>Order::Increase/Decrease are deprecated.  Please use Order::Less/More.</li>
<li>Leading whitespace is ignored for :sigspace</li>
<li>Better null pattern detection in regexes</li>
<li>improved run()/shell(), these return Proc::Status-objects now</li>
<li>The "gethostname" function implemented</li>
<li>Performance optimization: unfold junctions in 'when' clauses</li>
</ul>

<p>This release also contains a range of bug fixes, improvements to error reporting and better failure modes.</p>

<p>Please note that this release of Rakudo Star does not support the JVM backend from the Rakudo compiler. While the JVM backend mostly implements the same features as the Parrot backend, many bits are still missing, most prominently the native call interface.  We hope to provide a JVM-based Rakudo Star release soon.</p>

<p>The following notable features have been deprecated or modified from previous releases due to changes in the Perl 6 specification, and are planned to be removed or changed as follows:</p>

<ul>
<li>All unary hyper ops currently descend into nested arrays and hashes. In the future, those operators and methods that are defined "nodal" will behave like a one-level map.</li>
</ul>

<p>There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:</p>

<ul>
<li>advanced macros</li>
<li>threads and concurrency (in work for the JVM backend)</li>
<li>Unicode strings at levels other than codepoints</li>
<li>interactive readline that understands Unicode</li>
<li>non-blocking I/O</li>
<li>much of Synopsis 9 and 11</li>
</ul>

<p>There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo and other Perl 6 implementations.</p>

<p>In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.</p> <p>See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in the release tarball.</p>

<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.</p>
