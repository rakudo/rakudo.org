%% title: Announce: Rakudo Star Release 2014.08
%% date: 2014-08-30

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the August 2014 release of "Rakudo Star", a useful and usable
distribution of Perl 6. The tarball for the August 2014 release is
available from <a title="http://rakudo.org/downloads/star/" href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>. A Windows .MSI
version of Rakudo star will usually appear in the downloads area
shortly after the tarball release.

This Rakudo Star release comes with support for the MoarVM
backend (all module tests pass on supported platforms) along with
experimental support for the JVM backend (some module tests fail).
One shipped module is known to fail on Parrot (JSON::RPC).

In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.08.md">release 2014.08</a> of the
<a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 6.7.0 of the <a href="http://parrot.org/">Parrot Virtual</a>
<a href="http://parrot.org/">Machine</a>, version 2014.08 of <a href="http://moarvm.org/">MoarVM</a>, plus various modules,
documentation, and other resources collected from the Perl 6
community.

The 2014.08 release also covers the following announcements:
<a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.05.md">https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.05.md</a>
<a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.06.md">https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.06.md</a>
<a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.07.md">https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.07.md</a>
<a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.08.md">https://github.com/rakudo/rakudo/blob/master/docs/announce/2014.08.md</a>

Some of the new features added to this release include:
<ul>
    <li>Many optimizations in both rakudo and the underlying VMs.</li>
    <li>If the LOLLY envar is set, have (;;), [;;], etc., turn into LoLs. Otherwise, parsefail</li>
    <li>Add SEQ(a; b) to emulate the old behavior of (a; b)</li>
    <li>Make &amp;infix:&lt;xx&gt; many times faster</li>
    <li>fix multi-dimensional slice assignment</li>
    <li>assigning a single itemized hash to a hash is now DEPRECATED (my %h = {...})</li>
    <li>subbuf-rw specced and implemented</li>
    <li>the tr/// operator is implemented and has the proper return value</li>
    <li>improved string handling for MoarVM backend</li>
    <li>all backends now allow C pointer arithmetic and casting of pointers to Perl 6 types (this functionality is exposed by NativeCall)</li>
    <li>fixed 'fail' so it also prints a backtrace</li>
    <li>IO::Socket::Async now also works on JVM</li>
    <li>added or updated many Supply methods: act, batch, categorize, Channel, classify, delay, elems, flat, grab, last, live, max, min, minmax, merge, migrate, Promise, reduce, reverse, rotor, sort, squish, stable, start, uniq, wait, zip</li>
    <li>added IO::Notification.watch_path / IO::Path::watch which return a Supply of file system changes</li>
    <li>added first-index, last-index, grep-index subs/methods</li>
    <li>deprecate $*OS, $*OSVER, $*VM, $*PERL...</li>
    <li>added $*KERNEL, $*DISTRO, $*VM, $*PERL as full blown objects</li>
    <li>"use v5" is no longer a noop, but actually tries to load the "v5" module (soon available as part of Rakudo*)</li>
    <li>implemented labeled loops and throwing of labels as payload</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:
<ul>
    <li> advanced macros</li>
    <li> threads and concurrency (in progress for the JVM and MoarVM backend)</li>
    <li> Unicode strings at levels other than codepoints</li>
    <li> interactive readline that understands Unicode</li>
    <li> non-blocking I/O</li>
    <li> much of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo and
other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources. A
draft of a Perl 6 book is available as <a href="https://github.com/rakudo/star/raw/master/docs/UsingPerl6-draft.pdf">docs/UsingPerl6-draft.pdf</a> in
the release tarball.

The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see
<a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a>
mailing list, or join us on IRC #perl6 on freenode.