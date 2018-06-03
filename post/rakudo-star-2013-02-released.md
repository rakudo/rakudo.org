%% title: Rakudo Star 2013.02 released
%% date: 2013-02-24

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the February 2013 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the  February 2013 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.  A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.</p>

<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2013.02">release 2013.02.1</a> of the <a href="http://rakudo.org/">Rakudo Perl 6 compiler</a>, version 4.10.0 of the <a href="http://parrot.org/">Parrot Virtual Machine</a>, and various modules, documentation, and other resources collected from the Perl 6 community.</p>

<p>Some of the new features added to this release include:</p>

<ul>
<li>"Did you mean ..." suggestions for symbol-not-found errors</li>
<li>Compile-time optimization of some cases of junctions in boolean context</li>
<li>IO::Socket.get now works again with non-ASCII characters</li>
<li>constant folding for routines marked as 'is pure'</li>
<li>natively typed variables and better error reporting in the REPL</li>
<li>speed up eqv-comparison of Bufs</li>
<li>warnings for useless use of (some) literals, variables and constant expressions in sink context</li>
</ul>

<p>This release also contains a range of bug fixes, improvements to error reporting
and better failure modes. </p>

<p>The following features have been deprecated or modified from previous
releases due to changes in the Perl 6 specification, and are being removed
or changed as follows:</p>

<ul>
<li>.gist on a type object will return '(Typename)' instead of 'Typename()'.  If you want to get the class name alone, continue to use $obj.^name</li>
<li>postcircumfix:&lt;[ ]> and postcircumfix:&lt;{ }> will become multi-subs rather than multi-methods. Both at_pos and at_key will remain methods.</li>
<li>Unary hyper ops currently descend into nested arrays and hashes.  This will change to make them equivalent to a one-level map.</li>
<li>The Str.ucfirst builtin is deprecated; it will be replaced by Str.tc.</li>
<li>Leading whitespace in rules and under :sigspace will no longer be converted to &lt;.ws> .  For existing regexes that expect this conversion, add a &lt;?> in front of leading whitespace to make it meta again.</li>
<li>The ?-quantifier on captures in regexes currently binds the capture slot to a List containing either zero or one Match objects; i.e., it is equivalent to "** 0..1".  In the future, the ?-quantifier will bind the slot directly to a captured Match or to Nil.  Existing code can manage the transition by changing existing ?-quantifiers to use "** 0..1", which will continue to return a List of matches.</li>
</ul>

<p>There are some key features of Perl 6 that Rakudo Star does not
yet handle appropriately, although they will appear in upcoming
releases.  Some of the not-quite-there features include:</p>

<ul>
<li>advanced macros</li>
<li>threads and concurrency</li>
<li>Unicode strings at levels other than codepoints</li>
<li>interactive readline that understands Unicode</li>
<li>non-blocking I/O</li>
<li>much of Synopsis 9</li>
</ul>

<p>There is an online resource at http://perl6.org/compilers/features
that lists the known implemented and missing features of Rakudo
and other Perl 6 implementations.</p>

<p>In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are
many that we've missed.  Bug reports about missing and broken
features are welcomed at <a
href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.</p>

<p>See <a href="http://perl6.org/">perl6.org</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources.  A draft of a Perl 6 book is available as <docs/UsingPerl6-draft.pdf> in the release tarball.</p>

<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the perl6-compiler@perl.org mailing list, or join us on IRC #perl6 on freenode.</p>
