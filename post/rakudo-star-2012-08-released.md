%% title: Rakudo Star 2012.08 released
%% date: 2012-08-31

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the August 2012 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the August 2012 release is available from <a href="http://github.com/rakudo/star/downloads">http://github.com/rakudo/star/downloads</a>. A Windows .MSI version of Rakudo Star is also available from the download site.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2012.08">release 2012.08</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 4.6 of the <a href="http://parrot.org/">Parrot Virtual Machine</a>, and various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new features added to this release include:

* Rakudo Star now includes a Perl 6 debugger!  The debugger allows  single-stepping, setting breakpoints, variable inspection/modification,   regex debugging, and more!  Enter "perl6-debug <em>script.pl</em>" to run   a script in debugging mode.  Enter "help" from a debug prompt to  see the available commands.

* Memory usage of the build stage has been reduced by 35% - 40%.  This   makes it possible to build and compile Rakudo Star on machines with  less memory (although 1.2GB may still be needed for some 64-bit  environments).

* Variables prefixed by | or \ in signatures are now sigilless, per updates  to the Perl 6 specification.

* Circularities in module loading are now detected.

* An improved inliner, allowing a wider range of routines to be inlined.

* Str.bytes and lcfirst have been removed.  The tclc builtin  has been added.

* 'abs' is now a normal subroutine instead of a prefix operator.

* IO::File and IO::Dir have been removed.

* The integer argument to IO::Socket.recv is now interpreted as   a number of characters/codepoints.

This release also contains a range of bug fixes, improvements to error reporting and better failure modes. More exceptions are thrown as typed exceptions, and more meta-model errors have been fixed to properly report line numbers.

We also identify changes to the implementation or specification that can cause breakages in existing Perl 6 code.  The following features have been deprecated or modified
due to changes in the Perl 6 specification, and are being removed or changed as follows:

* Parameters preceded by a | or \ can no longer have a sigil.

* IO::Path.dir (which returns the directory part of the path) has been renamed to IO::Path.directory.  IO::Path.dir will be removed or re-purposed.

* The Str.ucfirst builtin is deprecated; it will be replaced by Str.tc.

* The (experimental) LAZY statement prefix will soon be removed.

* Leading whitespace in rules and under :sigspace will no longer be converted to &lt;.ws&gt; .  For existing regexes that expect this conversion, add a <?> in front of leading whitespace to make it meta again.

* The ?-quantifier on captures in regexes currently binds the capture slot to a List containing either zero or one Match objects; i.e., it is equivalent to "** 0..1".  In the future, the ?-quantifier will   bind the slot directly to a captured Match or to Nil.  Existing code can manage the transition by changing existing ?-quantifiers to use "** 0..1", which will continue to return a List of matches.

There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:

  * macros
  * threads and concurrency
  * Unicode strings at levels other than codepoints
  * interactive readline that understands Unicode
  * non-blocking I/O
  * much of Synopsis 9

There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo Star 2012.08 and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as <docs/UsingPerl6-draft.pdf> in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the perl6-compiler@perl.org mailing list, or join us on IRC #perl6 on freenode.



