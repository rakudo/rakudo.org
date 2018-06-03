%% title: Announce: Rakudo Star Release 2015.09
%% date: 2015-09-25

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the September 2015 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the September 2015 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.</p>

<p>This Rakudo Star release comes with support for the MoarVM backend (all module tests pass on supported platforms).</p>

<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2015.09.md">release 2015.09</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 2015.09 of <a href="http://moarvm.org/">MoarVM</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.</p>

<p>Some of the new compiler features added to this release include:</p>

<ul>
<li>Great List Refactor (GLR) - See http://design.perl6.org/S07.html</li>
<li>All Deprecations removed in preparation for Christmas release</li>
<li>Added support for calling into C++ libraries and calling methods on C++ classes</li>
<li>New slurpy parameter, +args or +@args, to allow for one-argument style binding</li>
<li>New with/orwith/without conditionals allow you to check for .defined but topicalize to the actual value returned</li>
<li>New <code>supply</code>, <code>whenever</code> and <code>react</code> blocks for easy reactive programming</li>
<li>All Unicode digits can now be part of literal numbers</li>
<li><code>val()</code> and allomorphic types implemented</li>
<li>Most European quoting styles are now supported</li>
<li>New $[...] and ${...} constructs allow prefix itemization</li>
<li>The .gist and .perl methods can now deal with self-referential structures</li>
</ul>

<p>Please note that this release of Rakudo Star is not fully functional with the JVM backend from the Rakudo compiler. Support should be restored shortly.</p>

<p>Notable changes in modules shipped with Rakudo Star:</p>

<ul>
<li>All modules fixed to work with GLR where needed</li>
<li>Panda now includes JSON::Fast and no longer precompiles to byte code</li>
<li>Terminal::ANSIColor replaces the deprecated Term::ANSIColor</li>
<li>New Perl 6 tutorial replaces original perl6 book draft</li>
</ul>

<p>There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:</p>

<ul>
<li>advanced macros</li>
<li>non-blocking I/O (in progress)</li>
<li>much of Synopsis 9 and 11</li>
</ul>

<p>There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo's backends and other Perl 6 implementations.</p>

<p>In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="&#109;&#x61;i&#108;&#x74;&#111;:&#114;&#x61;k&#x75;&#100;&#x6F;bu&#103;&#64;&#x70;&#101;&#114;&#108;&#x2E;&#111;&#x72;&#103;">&#114;&#x61;k&#x75;&#100;&#x6F;bu&#103;&#64;&#x70;&#101;&#114;&#108;&#x2E;&#111;&#x72;&#103;</a>.</p>

<p>See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A Perl 6 tutorial is available as docs/2015-spw-perl6-course.pdf in the release tarball.</p>

<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="&#109;&#x61;&#x69;&#108;&#x74;&#111;:&#112;&#101;&#x72;&#108;&#x36;&#x2D;&#99;&#111;&#109;&#112;i&#x6C;&#x65;&#114;&#64;&#x70;&#101;&#x72;&#108;&#x2E;&#x6F;&#114;&#103;">&#112;&#101;&#x72;&#108;&#x36;&#x2D;&#99;&#111;&#109;&#112;i&#x6C;&#x65;&#114;&#64;&#x70;&#101;&#x72;&#108;&#x2E;&#x6F;&#114;&#103;</a> mailing list, or join us on IRC #perl6 on freenode.</p>
