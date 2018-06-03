%% title: Rakudo Star 2012.09 released
%% date: 2012-09-30

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the September 2012 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the September 2012 release is available from <a href="http://github.com/rakudo/star/downloads">http://github.com/rakudo/star/downloads</a>. A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2012.09.1">release 2012.09.1</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 4.6.0 of the <a href="http://parrot.org/">Parrot Virtual Machine</a>, and various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new features added to this release include:

* Basic macro support!

* Support for Perl 5 (m:P5/.../) regex syntax!

* Indirect type names in routine and type declarations are supported.

* We support the "is export" trait on constant declarations.

* The "is hidden" and base traits are supported.

* Str.wordcase, is-prime, and expmod are implemented.

* Compilation is slightly faster than before.

* Tie-breaking with constraints selects the first matching constraint rather than demanding mutual exclusion.

* Smart matching against Signature literals, and binding to Signatures in declarators.

This release also contains a range of bug fixes, improvements to error reporting and better failure modes. More exceptions are thrown as typed exceptions, and more meta-model errors have been fixed to properly report line numbers.

The following features have been deprecated or modified from previous releases due to changes in the Perl 6 specification, and are being removed or changed as follows:

* Iterable is now a role instead of a class, and no longer inherits from Cool.

* Parameters preceded by a | or \ can no longer have a sigil.

* IO::Path.dir (which returns the directory part of the path) has been renamed to IO::Path.directory.  IO::Path.dir will be removed or re-purposed.

* The Str.ucfirst builtin is deprecated; it will be replaced by Str.tc.

* The (experimental) LAZY statement prefix will soon be removed.

* Leading whitespace in rules and under :sigspace will no longer be converted to &lt;.ws&gt; .  For existing regexes that expect this conversion, add a &lt;?&gt; in front of leading whitespace to make it meta again.

* The ?-quantifier on captures in regexes currently binds the capture slot to a List containing either zero or one Match objects; i.e., it is equivalent to "** 0..1".  In the future, the ?-quantifier will bind the slot directly to a captured Match or to Nil.  Existing code can manage the transition by changing existing ?-quantifiers to use "** 0..1", which will continue to return a List of matches.

There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:
  * advanced macros
  * threads and concurrency
  * Unicode strings at levels other than codepoints
  * interactive readline that understands Unicode
  * non-blocking I/O
  * much of Synopsis 9

There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available docs/UsingPerl6-draft.pdf in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.
