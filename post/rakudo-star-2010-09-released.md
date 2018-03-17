%% title:  Rakudo Star 2010.09 released
%% date: 2010-09-29

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the September 2010 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the September 2010 release is available from <a href="http://github.com/rakudo/star/downloads">http://github.com/rakudo/star/downloads</a>.</p>
<p>Rakudo Star is aimed at "early adopters" of Perl 6.  We know that it still has some bugs, it is far slower than it ought to be, and there are some advanced pieces of the Perl 6 language specification that aren't implemented yet.  But Rakudo Perl 6 in its current form is also proving to be viable (and fun) for developing applications and exploring a great new language.  These "Star" releases are intended to make Perl 6 more widely available to programmers, grow the Perl 6 codebase, and gain additional end-user feedback about the Perl 6 language and Rakudo's implementation of it.</p>
<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  The September 2010 Star release includes release #33 of the Rakudo Perl 6 compiler [1], version 2.8.0 of the Parrot Virtual Machine [2], and various modules, documentation, and other resources collected from the Perl 6 community.</p>
<p>This release of Rakudo Star adds the following features over the previous Star release:<br />
  * Several performance improvements have been implemented; notably in the slurp() and reverse() functions<br />
  * The series operator has been refactored and updated to the current specification<br />
  * Temporal objects (DateTime, Date, Instant, and Duration) are now completely implemented<br />
  * Enumeration objects now conform much closer to the specification<br />
  * 'now' and 'time' are now terms instead of functions.  This means you can write 'time - 1' and it will do what you mean, but 'time()' is no longer valid.<br />
  * The Perl 6 specification tests [3] are now included in the distribution.</p>
<p>There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Thus, we do not consider Rakudo Star to be a "Perl 6.0.0" or "1.0" release.  Some of the not-quite-there features include:<br />
  * nested package definitions<br />
  * binary objects, native types, pack and unpack<br />
  * typed arrays<br />
  * macros<br />
  * state variables<br />
  * threads and concurrency<br />
  * Unicode strings at levels other than codepoints<br />
  * pre and post constraints, and some other phasers<br />
  * interactive readline that understands Unicode<br />
  * backslash escapes in regex &lt;[...]&gt; character classes<br />
  * non-blocking I/O<br />
  * most of Synopsis 9<br />
  * perl6doc or pod manipulation tools</p>
<p>In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed.</p>
<p>See <a href="http://perl6.org/" title="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. An updated draft of a Perl 6 book is available as &lt;docs/UsingPerl6-draft.pdf&gt; in the release tarball.</p>
<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.</p>
<p>Rakudo Star releases are created on a monthly cycle or as needed in response to important bug fixes or improvements.  The next planned release of Rakudo Star will be on October 26, 2010.</p>
<p>[1] <a href="http://github.com/rakudo/rakudo" title="http://github.com/rakudo/rakudo">http://github.com/rakudo/rakudo</a><br />
[2] <a href="http://parrot.org/" title="http://parrot.org/">http://parrot.org/</a><br />
[3] <a href="http://github.com/perl6/roast" title="http://github.com/perl6/roast">http://github.com/perl6/roast</a></p>
