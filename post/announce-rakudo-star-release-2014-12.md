%% title: Announce: Rakudo Star Release 2014.12
%% date: 2014-12-26

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>
<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to
announce the December 2014 release of "Rakudo Star", a useful and usable
distribution of Perl 6. The tarball for the December 2014 release is
available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.</p>
<p>This Rakudo Star release comes with support for the MoarVM
backend (all module tests pass on supported platforms) along with
experimental support for the JVM backend (some module tests fail).
Three shipped modules are known to fail on Parrot (JSON::RPC,
MIME::Base64 and p6doc).</p>
<p>In the Perl 6 world, we make a distinction between the language
("Perl 6") and specific implementations of the language such as
"Rakudo Perl". This Star release includes <a href="">release 2014.12</a> of the
<a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 6.9.0 of the <a href="http://parrot.org">Parrot Virtual
Machine</a>, version 2014.12 of <a href="http://moarvm.org/">MoarVM</a>, plus various modules,
documentation, and other resources collected from the Perl 6
community.</p>
<p>Some of the new compiler features added to this release include:</p>
<ul>
<li>$str ~~ s/// now returns a Match or list of Matches (incompatible change)</li>
<li>Supply.lines/words and IO::Handle.words implemented</li>
<li>&amp;indir for scoped directory manipulations</li>
<li>Various performance improvements</li>
<li>Method 'for' as an alias for 'map'. Map will stop flattening the list eventually, 'for' remains as it is now</li>
<li>Method 'unique' as a successor for 'uniq'</li>
<li>Introduce IO::Handle.slurp-rest for slurping rest from the handle</li>
<li>Fix tie-breaking issues with longest literal matching</li>
<li>Method FALLBACK implemented</li>
<li>$*DISTRO and $*KERNEL updated ($*DISTRO now actually report the Linux dist)</li>
<li>Added Metamodel::Primitives, to open up more meta-programming possibilities
  (publishing method caches, completely custom meta-objects, etc.)</li>
</ul>
<p>Changes to modules included in Rakudo Star:</p>
<ul>
<li><a href="https://github.com/tadzik/Bailador">Bailador</a> now binds to all interfaces by default.</li>
<li><a href="https://github.com/tadzik/panda">panda</a> reads package information from <a href="http://ecosystem-api.p6c.org/">http://ecosystem-api.p6c.org/</a> as opposed to <a href="http://feather.perl6.nl:3000/">http://feather.perl6.nl:3000/</a>.</li>
<li>panda executable now works under PowerShell.</li>
<li>panda returns correct exit status if it fails.</li>
<li>panda now ignores POD while determining module dependencies.</li>
<li>panda now can <a href="http://perl6advent.wordpress.com/2014/12/21/day-21-community-smoke-testing/">upload test results to testers.perl6.org server</a>.</li>
<li>panda now displays help with correct command descriptions when using <code>--help</code>.</li>
<li>panda has a <code>smoke</code> option to download and test all Perl 6 modules.</li>
<li>panda can now use <code>look</code> option in order to download modules without doing anything else.</li>
<li><a href="https://github.com/supernovus/perl6-http-easy">HTTP::Easy</a> has received a few algorithm optimizations that made it faster.</li>
<li>HTTP::Easy now binds to all interfaces by default when acting as a web server.</li>
<li><a href="https://github.com/masak/ufo">ufo</a> now leaves <code>.pm</code> and <code>.pm6</code> in module names.</li>
<li><a href="https://github.com/jnthn/zavolaj">NativeCall</a> now parses library names like <code>libfoo-2.0</code> and <code>libbar.so.3.3.0</code>.</li>
</ul>
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
<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-users@perl.org">perl6-users@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.</p>
