%% title: Announce: Rakudo Star Release 2016.01
%% date: 2016-02-03

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce
the January 2016 release of "Rakudo Star", a useful and usable production
distribution of Perl 6. The tarball for the January 2016 release is available
from <a title="http://rakudo.org/downloads/star/" href="http://rakudo.org/downloads/star/" target="_blank">http://rakudo.org/downloads/star/</a>.

This is the first post-Christmas (production) release of Rakudo Star and
implements Perl v6.c. It comes with support for the MoarVM backend (all module
tests pass on supported platforms).

Please note that this release of Rakudo Star is not fully functional with the
JVM backend from the Rakudo compiler. Please use the MoarVM backend only.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and
specific implementations of the language such as "Rakudo Perl". This Star
release includes <a title="https://raw.githubusercontent.com/rakudo/rakudo/2016.01.1/docs/announce/2016.01.md" href="https://raw.githubusercontent.com/rakudo/rakudo/2016.01.1/docs/announce/2016.01.md" target="_blank">release 2016.01.1</a> of the <a title="http://github.com/rakudo/rakudo" href="http://github.com/rakudo/rakudo" target="_blank">Rakudo Perl 6 compiler</a>, version
2016.01 of <a title="http://moarvm.org/" href="http://moarvm.org/" target="_blank">MoarVM</a>, plus various modules, documentation, and other resources
collected from the Perl 6 community.

Some of the new compiler features since the last Rakudo Star release include:
<ul>
    <li>Chained .grep calls on Supply fixed (RT #127297)</li>
    <li>Fixed interaction with perl6-debug and precompilation that resulted in an
endless loop</li>
    <li>re-enabled warning when smart-matching against a True or False literal</li>
    <li>Fixed internal error when reporting certain type errors (RT #127207)</li>
    <li>Fixed rare "duplicate definition of symbol" errors (RT #127107)</li>
    <li>Fixed interpolating of pairs with non-key strings into signatures</li>
    <li>Fixed error when smart-matching Seq against a Set (RT #127166)</li>
    <li>Improved error message when smart-matching against an S///-expression</li>
    <li>Fixed bad interaction between EXPORTHOW and multiple declarations (RT #126566)</li>
    <li>Fixed various issues regarding precompilation</li>
    <li>Improved accuracy of Complex.sqrt</li>
    <li>hyper now preserves order of results, as designed</li>
    <li>Range.sum on an empty, numeric Range is now 0</li>
    <li>Fixed Promise.allof() with an empty list of promises (RT #127101)</li>
    <li>Improved message on premature virtual method call (RT #127097)</li>
    <li>Better error message for module load failures of types that are part of the setting</li>
    <li>Support for Readline in addition to Linenoise</li>
    <li>Initial shaped array support</li>
    <li>\r\n (Carriage Return/LineFeed) is now a single (synthetic) grapheme</li>
    <li>Unicode support adheres to Unicode Annex #29</li>
    <li>Unicode quotes are now also allowed in regular expressions</li>
    <li>Improved newline support with "use newline" and updates to IO::Handle</li>
    <li>Added List.head, List.tail, List.repeated methods</li>
    <li>Str.encode now allows :replacement parameter for unencodable sequences</li>
    <li>Str.split now accepts multiple strings to split on</li>
    <li>New Range.int-bounds returns first/last value for integer ranges</li>
    <li>Auto-generated meta-ops vivified by referring to them, instead of executing</li>
    <li>Illegal assignment of different Numeric values now caught at compile time</li>
    <li>&amp;nextcallee implemented, which returns the routine that nextsame would invoke</li>
    <li>Many speedups</li>
</ul>
Notable changes in modules shipped with Rakudo Star:
<ul>
    <li>Bailador: The PSGI module by default now sets p6sgi instead of psgi</li>
    <li>DBIish: Many fixes</li>
    <li>Digest::MD5: Updated to conform to new newline handling</li>
    <li>doc: p6doc -l added. p6doc now works for most non-core docs with pod</li>
    <li>LWP::Simple: Replace "as Int" with proper coercion type to fix build</li>
    <li>Linenoise: Many fixes</li>
    <li>MIME::Base64: Adjust to pack being made experimental</li>
    <li>panda: Large number of precomp and other bug fixes.  Now depends on 6.c</li>
    <li>Template::Mojo: use MONKEY-SEE-NO-EVAL</li>
    <li>Shell::Command: removed "as"</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet
handle appropriately, although they will appear in upcoming releases.
Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>non-blocking I/O (in progress)</li>
    <li>some bits of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a title="http://perl6.org/compilers/features" href="http://perl6.org/compilers/features" target="_blank">http://perl6.org/compilers/features</a>
that lists the known implemented and missing features of Rakudo's
backends and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the
programmer that a given feature isn't implemented, but there are many
that we've missed. Bug reports about missing and broken features are
welcomed at <a title="mailto:rakudobug@perl.org" href="mailto:rakudobug@perl.org" target="_blank">rakudobug@perl.org</a>.

See <a title="http://perl6.org/" href="http://perl6.org/" target="_blank">http://perl6.org/</a> for links to much more information about
Perl 6, including documentation, example code, tutorials, reference
materials, specification documents, and other supporting resources.
Perl 6 tutorials are available under the "docs" directory in
the release tarball.

The development team thanks all of the contributors and sponsors for
making Rakudo Star possible. If you would like to contribute, see <a title="http://rakudo.org/how-to-help" href="http://rakudo.org/how-to-help" target="_blank">http://rakudo.org/how-to-help</a>, ask on the <a title="mailto:perl6-compiler@perl.org" href="mailto:perl6-compiler@perl.org" target="_blank">perl6-compiler@perl.org</a>
mailing list, or join us on IRC #perl6 on freenode.