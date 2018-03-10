%% title: Announce: Rakudo Star Release 2016.04
%% date: 2016-04-25

On behalf of the Rakudo and Perl 6 development teams, I'm honored to announce the April 2016 release of "Rakudo Star", a useful and usable production distribution of Perl 6. The tarball for the April 2016 release is available from <a title="http://rakudo.org/downloads/star/" href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.

This is the second post-Christmas (production) release of Rakudo Star and implements Perl v6.c. It comes with support for the MoarVM backend (all module tests pass on supported platforms).

Please note that this release of Rakudo Star is not fully functional with the JVM backend from the Rakudo compiler. Please use the MoarVM backend only.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a title="release 2016.04" href="https://raw.githubusercontent.com/rakudo/rakudo/2016.04/docs/announce/2016.04.md">release 2016.04</a> of the <a title="Rakudo Perl 6 compiler" href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 2016.04 of <a title="MoarVM" href="http://moarvm.org/">MoarVM</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new compiler features since the last Rakudo Star release include:
<ul>
    <li>Much improved REPL with multi-line support.</li>
    <li>Native string arrays.</li>
    <li>Values in the environment value hash are now allomorphic.</li>
    <li>Blob is now a proper value type.</li>
    <li>Many Time &amp; Memory efficiency improvements including faster accessor/mutators, sorting and object comparison.</li>
    <li>Can now uninstall modules.</li>
    <li>Modules can now be shared between rakudo versions.</li>
    <li>"magic" inc/dec cleaned up.</li>
    <li>utf8-c8 encoding crashes fixed.</li>
    <li>pre-comp locking fix.</li>
    <li>missing module error mentions line number.</li>
    <li>The usual assortment of bug fixes and error message improvements.</li>
</ul>
Notable changes in modules shipped with Rakudo Star:
<ul>
    <li>Bailador: removed and available in the ecosystem.</li>
    <li>ufo: removed and available in the ecosystem.</li>
    <li>Native::Resources: helper for native code added.</li>
    <li>DBIish: Better Oracle &amp; Postgres support, more GLRish API and many other fixes.</li>
    <li>Shell::Command: deprecated "which".</li>
    <li>Panda: Fix issues with paths containing spaces, '--help' option added etc.</li>
    <li>p6doc: no longer creates empty FakeDir directories (was workaround for now fixed precomp bug).</li>
    <li>JSON::Fast: fix for undefined value.</li>
    <li>NativeHelpers::Blob: version 0.1.8 with improved windows tests.</li>
    <li>PSGI: allow output to be a Buf.</li>
    <li>Shell::Command: travis fix and deprecate which on Windows and Mac.</li>
    <li>* And much more.</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases. Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>non-blocking I/O (in progress)</li>
    <li>some bits of Synopsis 9 and 11</li>
</ul>
There is an online resource at <a title="http://perl6.org/compilers/features" href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo's backends and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a title="rakudobug@perl.org" href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a title="http://perl6.org/" href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, presentations, reference materials, design documents, and other supporting resources. Some Perl 6 tutorials are available under the "docs" directory in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a title="http://rakudo.org/how-to-help" href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a title="perl6-compiler@perl.org" href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.