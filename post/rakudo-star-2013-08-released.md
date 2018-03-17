%% title: Rakudo Star 2013.08 released
%% date: 2013-08-24

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the August 2013 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the August 2013 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>. A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.</p>

<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes <a href="https://github.com/rakudo/rakudo/blob/nom/docs/announce/2013.08.md">release 2013.08</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 5.5.0 of the <a href="http://parrot.org">Parrot Virtual Machine</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.</p>

<p>Some of the new features added to this release include:</p>

<ul>
<li><code>is default</code> traits on variables are now implemented</li>
<li>assigning Nil restores the default value</li>
<li><code>Buf</code> is now a role, and Buf objects are immutable.</li>
<li><code>printf</code> now correctly handles big integers</li>
<li>fixed handling of indented heredocs</li>
<li><code>dir()</code> is now lazy</li>
</ul>

<p>This release also contains a range of bug fixes, improvements to error reporting and better failure modes.</p>

<p>Please note that this release of Rakudo Star does not support the JVM backend from the Rakudo compiler. While the JVM backend mostly implements the same features as the Parrot backend, many small IO bits are still missing, rendering some crucial parts like the module installer unsable.  We hope to provide a JVM-based Rakudo Star release soon.</p>

<p>The following features have been deprecated or modified from previous releases due to changes in the Perl 6 specification, and are planned to be removed or changed as follows:</p>

<ul>
<li><p><code>postcircumfix:&lt;[ ]&gt;</code> and <code>postcircumfix:&lt;{ }&gt;</code> will become multi-subs rather than multi-methods. Both at_pos and at_key will remain methods.</p></li>
<li><p>All unary hyper ops currently descend into nested arrays and hashes. In the future, those operators and methods that are defined "nodal" will behave like a one-level map.</p></li>
<li><p>The Str.ucfirst builtin is deprecated; it will be replaced by Str.tc.</p></li>
<li><p>Leading whitespace in rules and under :sigspace will no longer be converted to <code>&lt;.ws&gt;</code>.  For existing regexes that expect this conversion, add a <code>&lt;?&gt;</code> in front of leading whitespace to make it meta again.</p></li>
</ul>

<p>There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:</p>

<ul>
<li>advanced macros</li>
<li>threads and concurrency</li>
<li>Unicode strings at levels other than codepoints</li>
<li>interactive readline that understands Unicode</li>
<li>non-blocking I/O</li>
<li>much of Synopsis 9</li>
</ul>
<p>There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo and other Perl 6 implementations.</p>

<p>In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at rakudobug@perl.org.</p>
<p>See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources.  A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in the release tarball.</p>

<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.</p>