%% title: Announce: Rakudo Star Release 2016.07
%% date: 2016-07-22

On behalf of the Rakudo and Perl 6 development teams, I'm pleased to announce the July 2016 release of "Rakudo Star", a useful and usable production distribution of Perl 6. The tarball for the July 2016 release is available from <a title="http://rakudo.org/downloads/star/" href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.

This is the third post-Christmas (production) release of Rakudo Star and implements Perl v6.c. It comes with support for the MoarVM backend (all module tests pass on supported platforms).

Please note that this release of Rakudo Star is not fully functional with the JVM backend from the Rakudo compiler. Please use the MoarVM backend only.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes release 2016.07 of the Rakudo Perl 6 compiler, version 2016.07 of MoarVM, plus various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new compiler features since the last Rakudo Star release include:
<ul>
    <li>Ability to use a custom debugger module</li>
    <li>The "is-approx" sub from Test.pm6 now allows for relative/absolute tolerance</li>
    <li>A fail in a custom BUILD will now be returned, rather than thrown</li>
    <li>Introduce .Map coercer</li>
    <li>Implement alternate ways to call subtest</li>
    <li>Support for new leap-second at the end of 2016</li>
    <li>The "is required" trait on Attributes can now take a Bool or a Str</li>
    <li>IO::[Path,Handle] gained a .mode method which returns the POSIX file permissions</li>
    <li>Distribution is now a role interface that enables encapsulating IO used for distribution installation</li>
    <li>CompUnit::Repository::Installation now uses the new Distribution interface</li>
    <li>Custom repository implementations now supported, including precompilation</li>
</ul>
Compiler maintenance since the last Rakudo Star release includes:
<ul>
    <li>Basic object creation (using either .new or .bless) now up to 3x faster</li>
    <li>All routines now have less overhead</li>
    <li>The MMD cache accepts candidates with named parameters if it can. (This made adverbed slices about 18x as fast)</li>
    <li>Sigificant optimizations for speed in many parts of the system (.map, gather/take etc.)</li>
    <li>Many precompilation fixes (including EVAL and improved support of OS packaging)</li>
    <li>Arrays with holes (e.g. from :delete) now correctly iterate/auto-vivify</li>
    <li>An issue with reverse dependencies of installed modules was fixed</li>
    <li>"is_approx" sub (note underscore) from Test.pm6 deprecated</li>
    <li>Harden Mu.Str against moving GC</li>
    <li>Simplify $USER/$GROUP initialization</li>
    <li>Mu can now be the result of a Promise</li>
    <li>samewith() now also works on non-multi's</li>
    <li>Many fixes in the area of pre-compilation and installing modules</li>
    <li>count-only and bool-only now are optional methods in Iterators (only to be implemented if they can work without generating anything)</li>
    <li>IO::ArgFiles.slurp / IO::ArgFiles.eof are fixed</li>
    <li>REPL whitespace and error handling</li>
    <li>CompUnit::Repository::Installation no longer considers bin/xxx and resources/bin/xxx the same content address</li>
    <li>min/max on Failures throw instead of returning ±Inf</li>
    <li>NativeCall's is mangled trait no longer ignored for CPPStruct</li>
    <li>Many Str, List and Array methods much faster</li>
    <li>Map/Hash initializations are now 30% faster</li>
    <li>make DESTDIR now correctly finds CompUnit::Repository::Staging</li>
    <li>Output from Test.pm6's diag() is no longer lost in non-verbose prove output when called at the start of the test file or during TODO tests</li>
    <li>Improved error messages</li>
</ul>
Notable changes in modules shipped with Rakudo Star:
<ul>
    <li>DBIish: v0.5.9 (with many Oracle/MySQL fixes) plus README.pod and mojibake fixes</li>
    <li>NativeHelpers-Blob: v0.1.10</li>
    <li>PSGI: v1.2.0 supports P6SGI 0.7Draft</li>
    <li>Pod-To-HTML: v0.1.2 plus fixes</li>
    <li>debugger-ui-commandline: README fixes</li>
    <li>doc: many fixes to documentation content and HTML generation</li>
    <li>panda: Avoid Rakudo internals deprecation warning and don't require Build.pm to inherit Panda::Builder</li>
    <li>perl6-file-which: CI fixes</li>
    <li>perl6-http-easy: v1.1.0 (with more flexible P6SGI support) plus avoid errors in binary request</li>
    <li>shell-command: Mention already implemented commands missing from README</li>
    <li>perl6-lwp-simple: track github.com/perl6/perl6-lwp-simple as upstream (as panda does) which has a test fix needed since we don't support https in R* and a test url had a new https redirect</li>
</ul>
perl6intro.pdf has also been updated.

There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases. Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>non-blocking I/O (in progress)</li>
    <li>some bits of Synopsis 9 and 11</li>
    <li>There is an online resource at <a title="http://perl6.org/compilers/features" href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo's backends and other Perl 6 implementations.</li>
</ul>
In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a title="rakudobug@perl.org" href="mail:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a title="http://perl6.org/" href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, presentations, reference materials, design documents, and other supporting resources. Some Perl 6 tutorials are available under the "docs" directory in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a title="http://rakudo.org/how-to-help" href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a title="perl6-compiler@perl.org" href="mail:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.