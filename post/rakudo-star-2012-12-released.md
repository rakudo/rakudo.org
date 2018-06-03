%% title: Rakudo Star 2012.12 released
%% date: 2012-12-27

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the December 2012 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the  December 2012 release is available from <a href="http://rakudo.org/downloads/star/">the download section.</a> A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes release <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2012.12">2012.12</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 4.10.0 of the <a href="http://parrot.org/">Parrot Virtual Machine</a>, and various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new features added to this release include:

<ul>
<li> Parse errors are much improved, and follow STD, the standard parser,
  much more closely; they are more accurate and more information is given</li>
<li> Rakudo now keeps parsing after some less serious errors</li>
<li> Better errors for various parse failures</li>
<li> The junction autothreader is now an order of magnitude faster</li>
<li> Texas (ASCII) versions of the Set and Bag operators implemented</li>
<li> Nested Pairs now give correct .perl output</li>
<li> <code>{ a => $_ }</code> now correctly considered a block, not a hash as
before</li>
</ul>

This release also contains a range of performance improvements, bug fixes, improvements to error reporting and better failure modes.

The following features have been deprecated or modified from previous releases due to changes in the Perl 6 specification, and are being removed or changed as follows:

<ul>
<li> 'for'-loops will become lazy, and are only evaluated eagerly in eager or sink (void) context. This means that if a for-loop is the last statement in a routine, it will usually run after the routine has returned, so it cannot call return() anymore.</li>
<li> Unary hyper ops currently descend into nested arrays and hashes.  This will change to make them equivalent to a one-level map.</li>
<li> The Str.ucfirst builtin is deprecated; it will be replaced by
Str.tc.</li>
<li> Leading whitespace in rules and under :sigspace will no longer be converted to &lt;.ws&gt; .  For existing regexes that expect this conversion, add a &lt;?&gt; in front of leading whitespace to make it meta again.</li>
<li> The ?-quantifier on captures in regexes currently binds the capture slot to a List containing either zero or one Match objects; i.e., it is equivalent to "** 0..1".  In the future, the ?-quantifier will bind the slot directly to a captured Match or to Nil.  Existing code can manage the transition by changing existing ?-quantifiers to use "** 0..1", which will continue to return a List of matches.</li>
</ul>

There are some key features of Perl 6 that Rakudo Star does not
yet handle appropriately, although they will appear in upcoming
releases.  Some of the not-quite-there features include:

<ul>
  <li>advanced macros</li>
  <li>threads and concurrency</li>
  <li>Unicode strings at levels other than codepoints</li>
  <li>interactive readline that understands Unicode</li>
  <li>non-blocking I/O</li>
  <li>much of Synopsis 9</li>
</ul>

There is an <a href="http://perl6.org/compilers/features">online resource that lists the known implemented and missing features of Rakudo and other Perl 6 implementations</a>.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at rakudobug@perl.org.

See http://perl6.org/ for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources.  A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see http://rakudo.org/how-to-help, ask on the perl6-compiler@perl.org mailing list, or join us on IRC #perl6 on freenode.
