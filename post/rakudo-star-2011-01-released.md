%% title:  Rakudo Star 2011.01 released
%% date: 2011-01-28

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the January 2011 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the January 2011 release is available from <a href="http://github.com/rakudo/star/downloads">http://github.com/rakudo/star/downloads</a>.</p>
<p>Starting with this January 2011 release, Rakudo Star releases will be created on a three-month cycle, or as needed in response to important bug fixes or improvements.  (The Rakudo compiler will continue with monthly releases.)  The next planned release of Rakudo Star will be in April 2011.</p>
<p>Rakudo Star is aimed at "early adopters" of Perl 6.  We know that it still has some bugs, it is far slower than it ought to be, and there are some advanced pieces of the Perl 6 language specification that aren't implemented yet.  But Rakudo Perl 6 in its current form is also proving to be viable (and fun) for developing applications and exploring a great new language.  These "Star" releases are intended to make Perl 6 more widely available to programmers, grow the Perl 6 codebase, and gain additional end-user feedback about the Perl 6 language and Rakudo's implementation of it.</p>
<p>In the Perl 6 world, we make a distinction between the language<br />
("Perl 6") and specific implementations of the language such as "Rakudo Perl".  The January 2011 Star release includes release #37 of the Rakudo Perl 6 compiler [1], version 3.0.0 of the Parrot Virtual Machine [2], and various modules, documentation, and other resources collected from the Perl 6 community.</p>
<p>This release of Rakudo Star adds the following features over the previous Star release:<br />
  * faster subroutine calls (type cache)<br />
  * implemented 'handles Rolename' trait<br />
  * 'use Devel::Trace' debugging pragma<br />
  * improved parsing of keyword boundaries<br />
  * faster .comb</p>
<p>There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:<br />
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
<p>In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">&#x72;&#97;&#x6b;u&#100;&#x6f;&#98;&#x75;&#103;&#x40;&#112;&#x65;&#114;&#x6c;&#46;&#x6f;r&#103;</a>.</p>
<p>See <a href="http://perl6.org/" title="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. An updated draft of a Perl 6 book is available as &lt;docs/UsingPerl6-draft.pdf&gt; in the release tarball.</p>
<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.</p>
<p>[1] <a href="http://github.com/rakudo/rakudo" title="http://github.com/rakudo/rakudo">http://github.com/rakudo/rakudo</a><br />
[2] <a href="http://parrot.org/" title="http://parrot.org/">http://parrot.org/</a></p>
