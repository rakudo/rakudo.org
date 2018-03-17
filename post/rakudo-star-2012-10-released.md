%% title: Rakudo Star 2012.10 released
%% date: 2012-10-29

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the October 2012 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the October 2012 release is available from &lt;<a href="http://github.com/rakudo/star/downloads">http://github.com/rakudo/star/downloads</a>&gt;. A Windows .MSI version of Rakudo star will usually appear in the downloads area shortly after the tarball release.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes <a href="https://github.com/rakudo/rakudo/blob/nom/docs/announce/2012.10">release 2012.10</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 4.6.0 of the <a href="http://parrot.org/">Parrot Virtual Machine</a>, and various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new features added to this release include:

* The method case of the handles trait

* The &lt;-&gt; lambda, which defaults parameters to rw

* The :dba modifier in regexes

* The radix form :60[24, 59, 59]

* Improved coverage of Perl 5 regexes when the P5 modifier is used

* Correct parsing of nested quote delimiters

* Attributes in scope are now visible inside of an eval

This release also contains a range of performance improvements, bug fixes, improvements to error reporting and better failure modes.

The following features have been deprecated or modified from previous releases due to changes in the Perl 6 specification, and are being removed or changed as follows:

* Unary hyper ops currently descend into nested arrays and hashes.
This will change to make them equivalent to a one-level map.

* ~/.perl6/lib will go away from the default include path (@*INC).
Instead %*CUSTOM_LIB now holds paths to four library locations:
perl    Rakudo installs its core modules here
vendor  OS-level package managers should install their modules here
site    for local module installations (e.g. with panda or ufo)
home    like site, but always under the user's home directory.
fallback if site isn't writable.

* protos for built-in routines are now mostly as generic as possible,
and will be changed to be specific to the arity of the routine.
For example 'proto sub chr(|) {*}' will become 'proto sub chr($) {*}'
This affects everybody who adds multis with unusual arity to built-in
subs.

* Parameters preceded by a | or \ can no longer have a sigil.

* IO::Path.dir (which returns the directory part of the path) has been
renamed to IO::Path.directory.  IO::Path.dir will be removed or
re-purposed.

* The Str.ucfirst builtin is deprecated; it will be replaced by Str.tc.

* Leading whitespace in rules and under :sigspace will no longer be
converted to &lt;.ws&gt; .  For existing regexes that expect this conversion,
add a &lt;?&gt; in front of leading whitespace to make it meta again.

* The ?-quantifier on captures in regexes currently binds the capture
slot to a List containing either zero or one Match objects; i.e., it
is equivalent to "** 0..1".  In the future, the ?-quantifier will
bind the slot directly to a captured Match or to Nil.  Existing code
can manage the transition by changing existing ?-quantifiers to
use "** 0..1", which will continue to return a List of matches.

There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:

* advanced macros
* threads and concurrency
* Unicode strings at levels other than codepoints
* interactive readline that understands Unicode
* non-blocking I/O
* much of Synopsis 9

There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at &lt;<a href="rakudobug@perl.org">rakudobug@perl.org</a>&gt;.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about  Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as &lt;docs/UsingPerl6-draft.pdf&gt; in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see &lt;<a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>&gt;, ask on the <a href="perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.