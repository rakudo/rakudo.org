%% title: Announce: Rakudo Star Release 2014.09
%% date: 2014-09-26

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the September 2014 release of "Rakudo Star", a useful and usable
distribution of Perl 6. The tarball for the September 2014 release is
available from <a title="http://rakudo.org/downloads/star/" href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.
Windows .MSI versions of Rakudo star for the MoarVM and Parrot backend
are also avaiable in the downloads area.

This Rakudo Star release comes with support for the MoarVM
backend (all module tests pass on supported platforms) along with
experimental support for the JVM backend (some module tests fail).
Two shipped modules are known to fail on Parrot (JSON::RPC and p6doc).

In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes <a title=" https://github.com/rakudo/rakudo/blob/nom/docs/announce/2014.09.md" href=" https://github.com/rakudo/rakudo/blob/nom/docs/announce/2014.09.md">release 2014.09</a> of the
<a title="http://github.com/rakudo/rakudo" href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 6.7.0 of the <a title="http://parrot.org" href="http://parrot.org">Parrot Virtual</a>
<a title="http://parrot.org" href="http://parrot.org"> Machine</a>, version 2014.09 of <a title="http://moarvm.org/" href="http://moarvm.org/">MoarVM</a>, plus various modules,
documentation, and other resources collected from the Perl 6
community.

Some of the new features added to this release include:
<ul>
    <li>panda (the module installer client) does work on windows again</li>
    <li>panda knows about all modules, that are shipped with this release</li>
    <li>./perl6 --profile for MoarVM</li>
    <li>Workaround OS X make bug for MoarVM</li>
    <li>support for submethod DESTROY (MoarVM only)</li>
    <li>optimizations to Str.words, Str.lines, IO.lines, chomp, and return</li>
    <li>added experimental support for Proc::Async, MoarVM only for now</li>
    <li>Reduced memory size of CORE.setting, improved startup time</li>
    <li>startup (on Moar) 15% faster than p5 w/ Moose</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>threads and concurrency (in progress for the JVM and MoarVM backend)</li>
    <li>Unicode strings at levels other than codepoints</li>
    <li>interactive readline that understands Unicode</li>
    <li>non-blocking I/O</li>
    <li>much of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a title="http://perl6.org/compilers/features" href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo and
other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <a title="mailto:rakudobug@perl.org" href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a title="http://perl6.org/" href="http://perl6.org/">http://perl6.org/</a> for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources. A
draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in
the release tarball.

The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see
<a title="http://rakudo.org/how-to-help" href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a title="mailto:perl6-compiler@perl.org" href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a>
mailing list, or join us on IRC #perl6 on freenode.