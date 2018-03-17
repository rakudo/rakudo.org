%% title:  Rakudo Star 2010.08 released
%% date: 2010-08-26

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the August 2010 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the August 2010 release is available from <a href="http://github.com/rakudo/star/downloads">http://github.com/rakudo/star/downloads</a>.</p>
<p>Rakudo Star is aimed at "early adopters" of Perl 6.  We know that it still has some bugs, it is far slower than it ought to be, and there are some advanced pieces of the Perl 6 language specification that aren't implemented yet.  But Rakudo Perl 6 in its current form is also proving to be viable (and fun) for developing applications and exploring a great new language.  These "Star" releases are intended to make Perl 6 more widely available to programmers, grow the Perl 6 codebase, and gain additional end-user feedback about the Perl 6 language and Rakudo's implementation of it.</p>
<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  The August 2010 Star release includes release #32 of the Rakudo Perl 6 compiler [1], version 2.7.0 of the Parrot Virtual Machine [2], and various modules, documentation, and other resources collected from the Perl 6 community.</p>
<p>This release of Rakudo Star adds the following features over the previous Star release:<br />
  * Nil is now undefined<br />
  * Many regex modifiers are now recognized on the outside of regexes<br />
  * Mathematic and range operations are now faster (they're still slow, but they're significantly faster than they were in the previous release)<br />
  * Initial implementations of .pack and .unpack<br />
  * MAIN can parse short arguments<br />
  * Removed a significant memory leak for loops and other repeated blocks</p>
<p>This release (temporarily?) omits the Config::INI module that was included in the 2010.07 release, as it no longer builds with the shipped version of Rakudo.  We hope to see Config::INI return soon.</p>
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
<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC channel #perl6 on freenode.</p>
<p>Rakudo Star releases are created on a monthly cycle or as needed in response to important bug fixes or improvements.  The next planned release of Rakudo Star will be on September 28, 2010.</p>
<p>[1] <a href="http://github.com/rakudo/rakudo" title="http://github.com/rakudo/rakudo">http://github.com/rakudo/rakudo</a><br />
[2] <a href="http://parrot.org/" title="http://parrot.org/">http://parrot.org/</a></p>
