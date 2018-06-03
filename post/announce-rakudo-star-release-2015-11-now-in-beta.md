%% title: Announce: Rakudo Star Release 2015.11 (now in beta!)
%% date: 2015-11-28

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the November 2015 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the November 2015 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.

This Rakudo Star release comes with support for the MoarVM backend (all module tests pass on supported platforms).

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2015.11.md">release 2015.11</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 2015.11 of <a href="http://moarvm.org/">MoarVM</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new compiler features since the ast Rakudo Star release include:
<ul>
    <li>There is now an <code>infix:&lt;.&gt;</code> operator that does method calls with slightly looser precedence than the postfix unary method call.</li>
    <li>New operator <code>infix o</code> for function composition</li>
    <li><code>fc</code> for Unicode-correct case folding implemented</li>
    <li>grep now accepts :k, :v, :kv, :p attributes</li>
    <li><code>Supply.throttle</code> for rate-limiting</li>
    <li>Array.push is now used for pushing one element (mostly); Array.append exists for pushing multiple values. Same for <code>unshift</code>/<code>prepend</code></li>
    <li>Basic arithmetic operations (<code>+</code>, <code>*</code>, <code>-</code>, <code>/</code>) on Range objects that shift or scale the end points while maintaining exclusions</li>
    <li>The v notation now allows alphabetic components: v1.2.beta. (Incompatible because method calls on a version must be protected by \ or () now.)</li>
    <li><code>use v6b+;</code> notation is now recognized and enforced</li>
    <li>Many built-in methods that return iterables are now much faster</li>
    <li>Better error messages when comparing version strings with numbers</li>
    <li>Several error messages that were lacking line numbers now include them</li>
    <li>Initial shaped array support</li>
    <li><code>\r\n</code> (Carriage Return/LineFeed) is now a single (synthetic) grapheme</li>
    <li>Unicode support adheres to Unicode Annex #29</li>
    <li>Unicode quotes are now also allowed in regular expressions</li>
    <li>Improved newline support with "use newline" and updates to IO::Handle</li>
    <li>Added List.head, List.tail, List.repeated methods</li>
    <li>Str.encode now allows :replacement parameter for unencodable sequences</li>
    <li>Str.split now accepts multiple strings to split on</li>
    <li>New Range.int-bounds returns first/last value for integer ranges</li>
    <li>Auto-generated meta-ops vivified by referring to them, instead of executing</li>
    <li>Illegal assignment of different Numeric values now caught at compile time</li>
    <li><code>&amp;nextcallee</code> implemented, which returns the routine that <code>nextsame</code> would invoke</li>
    <li>Many speedups</li>
</ul>
The Rakudo Perl 6 compiler is now officially in beta for the upcoming production release around Christmas 2015.

Please note that this release of Rakudo Star is not fully functional with the JVM backend from the Rakudo compiler. Please use the MoarVM backend only.

Notable changes in modules shipped with Rakudo Star:
<ul>
    <li>Bailador: Add MIT License</li>
    <li>DBIish: Improved Windows support</li>
    <li>doc: More documentation; generated HTML is better searchable</li>
    <li>Template::Mustache: Switched from LGPL to Artistic License 2.0</li>
    <li>panda: Default action is no longer <code>install</code>; better help messages</li>
    <li>Digest::MD5: Now accepts non-ASCII input (internally encodes as Latin-1)</li>
    <li>LWP::Simple: Support for successful return codes besides 200</li>
    <li>Shell::Command: <code>which</code> routine for locating executables</li>
    <li>Updated docs/2015-spw-perl6-course.pdf from Nov 21</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases. Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>non-blocking I/O (in progress)</li>
    <li>much of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo's backends and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A Perl 6 tutorial is available as docs/2015-spw-perl6-course.pdf in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.