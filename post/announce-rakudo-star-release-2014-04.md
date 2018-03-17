%% title: Announce: Rakudo Star Release 2014.04
%% date: 2014-05-05

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the April 2014 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the April 2014 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>. A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.

<strong>This is the first Rakudo Star release with support for the MoarVM backend (all module tests pass on supported platforms) along with experimental support for the JVM backend (some module tests fail).</strong>

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/nom/docs/announce/2014.04.md">release 2014.04</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 6.1.0 of the <a href="http://parrot.org/">Parrot Virtual Machine</a>, version 2014.04 of <a href="http://moarvm.org/">MoarVM</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new features added to this release include:
<ul>
    <li>experimental support for the JVM and MoarVM backends</li>
    <li>NativeCall passes all its tests on all backends</li>
    <li>S17 (concurrency) now in MoarVM (except timing related features)</li>
    <li>winner { more @channels { ... } } now works</li>
    <li>implemented univals(), .unival and .univals (on MoarVM)</li>
    <li>added .minpairs/.maxpairs on (Set|Bag|Mix)Hash</li>
    <li>Naive implementation of "is cached" trait on Routines</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases. Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>threads and concurrency (in work for the JVM and MoarVM backend)</li>
    <li>Unicode strings at levels other than codepoints</li>
    <li>interactive readline that understands Unicode</li>
    <li>non-blocking I/O</li>
    <li>much of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.