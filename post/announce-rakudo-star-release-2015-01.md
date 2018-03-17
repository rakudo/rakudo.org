%% title: Update to Rakudo Star Release 2015.01
%% date: 2015-02-07

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the January 2015 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the January 2015 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.</p>
<p>This Rakudo Star release comes with support for the MoarVM backend (all module tests pass on supported platforms) along with experimental support for the JVM backend (some module tests fail).  Three shipped modules are known to fail on Parrot (zavolaj (NativeCall), jsonrpc and doc)</p> <p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.01.md">release 2015.01.1</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 7.0.1 of the <a href="http://parrot.org">Parrot Virtual Machine</a>, version 2015.01 of <a href="http://moarvm.org/">MoarVM</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.</p>
<p>Some of the new compiler features added to this release include:</p>
<ul>
<li>Many improvements to Java interop for the JVM backend</li>
<li>New simple way of creating an object hash: :{}</li>
<li>Substitution now supports assignment meta-op, e.g. s[\d+] += 2</li>
<li>Many memory and CPU optimizations</li>
<li>Supply.for deprecated in favour of Supply.from-list</li>
</ul>
<p>Changes to modules included in Rakudo Star:</p>
<ul>
<li><a href="https://github.com/tadzik/Bailador">Bailador</a> handles POST and URL params separately</li>
<li><a href="https://github.com/perl6/DBIish">DBIish</a> has improved error reporting on SQLite</li>
<li><a href="https://github.com/perl6/doc">doc</a> ships with much more documentation</li>
<li><a href="https://github.com/tadzik/panda">panda</a> has a new command <code>installdeps</code></li>
<li><a href="https://github.com/perl6/Pod-To-HTML">Pod::To::HTML</a> now supports callbacks for code areas</li>
</ul>
<p>Parrot support will likely be suspended or dropped from future Rakudo and Rakudo Star releases, starting with the February or March releases.</p>
<p>In the next Rakudo Star release, modules <code>Math::RungeKutta</code> and <code>Math::Model</code> will likely be dropped. They can still be installed with <code>panda</code>.</p>
<p>In future, the <code>nqp::</code> namespace willl only be available after a declaration like `use nqp;'.</p>
<p>There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:</p>
<ul>
<li>advanced macros</li>
<li>threads and concurrency (in progress for the JVM and MoarVM backend)</li>
<li>Unicode strings at levels other than codepoints</li>
<li>interactive readline that understands Unicode</li>
<li>non-blocking I/O (in progress for the JVM and MoarVM backend)</li>
<li>much of Synopsis 9 and 11</li>
</ul>
<p>There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo's backends and other Perl 6 implementations.</p>
<p>In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.</p>
<p>See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in the release tarball.</p>
<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-users@perl.org">perl6-users@perl.org</a></a> mailing list, or join us on IRC #perl6 on freenode.</p>
