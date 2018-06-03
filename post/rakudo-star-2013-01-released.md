%% title: Rakudo Star 2013.01 released
%% date: 2013-01-30

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the January 2013 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the  January 2013 release is available from <a href="http://rakudo.org/downloads/star/">the download page</a>.  A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes release 2013.01 [0] of the Rakudo Perl 6 compiler [1], version 4.10.0 of the Parrot Virtual Machine [2], and various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new features added to this release include:

<ul>
<li>Sink context (what some other languages call void context) is now enforced correctly. This means that for-loops are now lazy by default. It fixes the bug where a map in sink context would not execute, and also means that a Failure returned to sink context will be properly thrown.</li>
<li>'require' now works with indirect module names</li>
<li>Restored socket read semantics to returning the requested number of bytes</li>
<li>$obj.Some::Role::meth() now passes the correct $obj</li>
<li> try/CATCH now returns Nil when the CATCH is triggered, rather than the exception; this brings it in line with try without a CATCH</li>
<li>whatever-star cases of splice now implemented</li>
<li>can now import multis with the same name from different modules, provided all dispatchers are onlystar</li>

This release also contains a range of bug fixes, improvements to error reporting
and better failure modes.

The following features have been deprecated or modified from previous
releases due to changes in the Perl 6 specification, and are being removed
or changed as follows:

<ul>
<li>postcircumfix:&lt;[ ]&gt; and postcircumfix:&lt;{ }&gt; will become multi-subs rather than multi-methods. Both at_pos and at_key will remain methods.</li>
<li> Unary hyper ops currently descend into nested arrays and hashes.  This will change to make them equivalent to a one-level map.</li>
<li>The Str.ucfirst builtin is deprecated; it will be replaced by Str.tc.</li>
<li> Leading whitespace in rules and under :sigspace will no longer be
converted to &lt;.ws&gt; .  For existing regexes that expect this conversion, add a &lt;?&gt; in front of leading whitespace to make it meta again.</li>
<li> The ?-quantifier on captures in regexes currently binds the capture slot to a List containing either zero or one Match objects; i.e., it is equivalent to "** 0..1".  In the future, the ?-quantifier will bind the slot directly to a captured Match or to Nil.  Existing code can manage the transition by changing existing ?-quantifiers to use "** 0..1", which will continue to return a List of matches.</li>

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

There is an online resource at http://perl6.org/compilers/features
that lists the known implemented and missing features of Rakudo
and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are
many that we've missed.  Bug reports about missing and broken
features are welcomed at <rakudobug@perl.org>.

See http://perl6.org/ for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources.
A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf
in the release tarball.

The development team thanks all of the contributors and sponsors
for making Rakudo Star possible.  If you would like to contribute,
see http://rakudo.org/how-to-help, ask on the perl6-compiler@perl.org
mailing list, or join us on IRC #perl6 on freenode.

[0] https://github.com/rakudo/rakudo/blob/master/docs/announce/2013.01
[1] http://github.com/rakudo/rakudo
[2] http://parrot.org/
