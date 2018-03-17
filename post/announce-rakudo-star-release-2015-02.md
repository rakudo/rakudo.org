%% title: Update to Rakudo Star Release 2015.02
%% date: 2015-02-21

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the February 2015 release of "Rakudo Star", a useful and usable
distribution of Perl 6. The tarball for the February 2015 release is
available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.</p>
<p>This Rakudo Star release comes with support for the MoarVM
backend (all module tests pass on supported platforms) along with
experimental support for the JVM backend (some module tests fail).
One shipped module is known to fail on Parrot (jsonrpc).</p>
<p>In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes <a href="">release 2015.02</a> of the
<a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 6.10.0 of the <a href="http://parrot.org">Parrot Virtual
Machine</a>, version 2015.02 of <a href="http://moarvm.org/">MoarVM</a>, plus various modules,
documentation, and other resources collected from the Perl 6
community.</p>
<pre><code>https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.02.md
</code></pre>
<p>Some of the new compiler features added to this release include:</p>
<ul>
<li>On MoarVM, symlinks are now followed.  This means that e.g. a given path
  can have both .l and .d be true, if the symlink points to a directory.
  This behaviour now matches the behaviour on the Parrot and JVM backend,
  therefore one could consider this a bug fix, rather than an incompatible
  change.</li>
<li>Overriding <code>invoke</code>/<code>postcircumfix:&lt;( )&gt;</code> for type coercions (ex.  <code>MyType(...)</code>)
  now passes the function arguments as-is, rather than just passing a Capture
  containing them. To get the old behavior, simply declare a Capture
  parameter (|c).</li>
<li><code>6;</code> at unit start is no longer a way to say <code>no strict;</code>.  It was deemed
  to be a bad meme and huffmannized inappropriately.</li>
<li>Coercion syntax now works in signatures: <code>sub foo(Str(Any) $a) { ... }</code>
  will take Any value as its first positional parameter, and coerce it to
  <code>Str</code> before making it available in <code>$a</code>.  Note that <code>Str(Any)</code> can be shortened
  to <code>Str()</code>.</li>
<li><code>sub MAIN;</code> (as in, rest of file is the MAIN unit) has been implemented.</li>
<li>Metaop <code>=</code> now respects the precedence of the op it is meta-ing.</li>
<li>Many optimizations, improved error messages and bugs fixed (over
  200 commits to Rakudo since the 2015.01 release).</li>
</ul>
<p>In future, the <code>nqp::</code> namespace willl only be available after a declaration
like <code>use nqp;</code>.</p>
<p>Changes to modules included in Rakudo Star:</p>
<ul>
<li><a href="https://github.com/moritz/json">JSON::Tiny</a> gives better error messages on invalid input</li>
<li><a href="https://github.com/tadzik/panda">panda</a> gives better error messages when
  projects.json is not a valid JSON file (for example due to ISP-level HTTP filtering)</li>
<li><a href="https://github.com/perl6/doc">doc</a> ships with much more documentation</li>
<li><a href="https://github.com/cosimo/perl6-lwp-simple">LWP::Simple</a> supports PUT and HEAD requests,
  as well as TLS if <a href="https://github.com/sergot/io-socket-ssl/">IO::Socket::SSL</a> is installed.</li>
</ul>
<p>The <code>Math::Model</code> and <code>Math::RungeKutta</code> modules no longer ship with Rakudo
Star. They can still be installed with <code>panda</code>.</p>
<p>This is the last Rakudo Star release with support for the Parrot backend,
until volunteers are found that bring the Parrot backend in shape and on par with
the other backends, and implement necessary features for upcoming changes. See
<a href="http://pmthium.com/2015/02/suspending-rakudo-parrot/">this blog post</a> for
more information.</p>
<p>There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:</p>
<ul>
<li>advanced macros</li>
<li>threads and concurrency (in progress for the JVM and MoarVM backend)</li>
<li>Unicode strings at levels other than codepoints</li>
<li>interactive readline that understands Unicode</li>
<li>non-blocking I/O (in progress for the JVM and MoarVM backend)</li>
<li>much of Synopsis 9 and 11</li>
</ul>
<p>There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo's
backends and other Perl 6 implementations.</p>
<p>In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.</p>
<p>See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources. A
draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in
the release tarball.</p>
<p>The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see
<a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.</p>
