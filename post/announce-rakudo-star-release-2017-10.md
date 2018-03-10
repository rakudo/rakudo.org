%% title: Announce: Rakudo Star Release 2017.10
%% date: 2017-11-09

On behalf of the Rakudo and Perl 6 development teams, I'm pleased to announce the October 2017 release of "Rakudo Star", a useful and usable production distribution of Perl 6. The tarball for this release is available from <a href="https://rakudo.perl6.org/downloads/star/">https://rakudo.perl6.org/downloads/star/</a>.

Binaries for macOS and Windows (64 bit) are also available at the same location.

This is a post-Christmas (production) release of Rakudo Star and implements Perl v6.c. It comes with support for the MoarVM backend (all module tests pass on supported platforms). Currently, Star is on a quarterly release cycle.

IMPORTANT: "panda" has been removed from this release since it is deprecated. Please use "zef" instead.

Please note that this release of Rakudo Star is not fully functional with the JVM backend from the Rakudo compiler. Please use the MoarVM backend only.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".

This Star release includes <a href="https://raw.githubusercontent.com/rakudo/rakudo/2017.10/docs/announce/2017.10.md">release 2017.10</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 2017.10 <a href="http://moarvm.org/">MoarVM</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.

The Rakudo compiler changes since the last Rakudo Star release of 2017.07 are now listed in "2017.08.md", "2017.09.md", and "2017.10.md" under the "rakudo/docs/announce" directory of the source distribution.

Notable changes in modules shipped with Rakudo Star:
<pre><code>+ DBIish: Newer version (doesn't work with 2017.01 anymore)
+ Test-META: New. also dependencies (JSON-Class, JSON-Marshal, JSON-Name, JSON-Unmarshal and META6)
+ doc: Too many to list. p6doc-index merged into p6doc and index built on first run.
+ p6-Template-Mustache: Fixed on Windows.
+ panda: Removed. Stub added to warn about this.
+ perl6-datetime-format: New (heavily used in ecosystem)
+ perl6-file-which: Fixed tests on Windows
+ tap-harness6: Many fixes.
+ zef: New version with many fixes
</code></pre>
There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases. Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>non-blocking I/O (now works for sockets and process)</li>
    <li>some bits of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo's backends and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="https://perl6.org/">https://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, presentations, reference materials, design documents, and other supporting resources. Some Perl 6 tutorials are available under the "docs" directory in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.