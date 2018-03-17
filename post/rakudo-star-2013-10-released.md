%% title: Rakudo Star 2013.10 released
%% date: 2013-10-29

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the October 2013 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the October 2013 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>. A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.</p>

<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/nom/docs/announce/2013.10.md">release 2013.10</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 5.9.0 of the <a href="http://parrot.org">Parrot Virtual Machine</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.</p>

<p>Some of the new features added to this release include:</p>

<ul>
<li>postcircumfix {} and [] are now implemented as multi subs rather than multi methods.</li>
<li>Add support for "is DEPRECATED", making it easy for early adopters to stay current.</li>
<li>Track multiple spec changes for various container classes.</li>
<li>Greatly reduce object creation during Regex parsing.</li>
<li>Various portability fixes.</li>
<li>qx// and run() now auto-quote correctly.</li>
<li>Allow <code>#`[...]</code>-style comments in regexes.</li>
<li>unlink() behaves like P5's, it deletes write-protected files on Windows.</li>
</ul>

<p>This release also contains a range of bug fixes, improvements to error reporting and better failure modes.</p>

<p>Please note that this release of Rakudo Star does not support the JVM backend from the Rakudo compiler. While the JVM backend mostly implements the same features as the Parrot backend, many bits are still missing, most prominently the native call interface.  We hope to provide a JVM-based Rakudo Star release soon.</p>

<p>The following notable features have been deprecated or modified from previous releases due to changes in the Perl 6 specification, and are planned to be removed or changed as follows:</p>

<ul>
<li><p><code>postcircumfix:&lt;[ ]&gt;</code> and <code>postcircumfix:&lt;{ }&gt;</code> are now multi-subs rather than multi-methods. Both at_pos and at_key remain as methods.</p></li>
<li><p>All unary hyper ops currently descend into nested arrays and hashes. In the future, those operators and methods that are defined "nodal" will behave like a one-level map.</p></li>
<li><p>The Str.ucfirst builtin is deprecated; it will be replaced by Str.tc. In this Rakudo Star release, use of Str.ucfirst will actually generate a warning upon first usage.</p></li>
<li><p>In the next release, leading whitespace in rules and under :sigspace will no longer be converted to <code>&lt;.ws&gt;</code>. For existing regexes that expect this conversion now and in the future, add a <code>&lt;?&gt;</code> in front of leading whitespace to replicate the old behavior. (Adding <code>&lt;?&gt;</code> today will have no adverse effects on your code.)</p></li>
</ul>

<p>There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:</p>

<ul>
<li>advanced macros</li>
<li>threads and concurrency</li>
<li>Unicode strings at levels other than codepoints</li>
<li>interactive readline that understands Unicode</li>
<li>non-blocking I/O</li>
<li>much of Synopsis 9 and 11</li>
</ul>

<p>We are also aware of these issues in the current release, which will be dealt with in a future relase:</p>

<ul>
<li><p>Whatever-currying of *&lt;>, *{}, and *[] is currently broken.</p></li>
<li><p>You may experience some test failures running the rakudo spectest. S16-filehandles/filestat.t will fail if you have Rakudo Star on a drive that does not record access times. S05-mass/charsets.rakudo.parrot will fail due to the tests being outdated.</p></li>
</ul>

<p>There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo and other Perl 6 implementations.</p>

<p>In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.</p>

<p>See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in
the release tarball.</p>

<p>The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see
<a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org/a> mailing list, or join us on IRC #perl6 on freenode.</p>

