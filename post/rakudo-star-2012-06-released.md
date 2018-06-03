%% title: Rakudo Star 2012.06 released
%% date: 2012-06-30

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the June 2012 release of "Rakudo Star", a useful and usable distribution of Perl 6.  The tarball for the June 2012 release is available from <a href="https://github.com/rakudo/star/downloads">https://github.com/rakudo/star/downloads</a>.

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2012.06">release 2012.06</a> of the
<a href="http://rakudo.org/">Rakudo Perl 6 compiler</a>, version 4.5 of the <a href="http://parrot.org/">Parrot Virtual Machine</a>, and various modules, documentation, and other resources collected from the Perl 6 community.

Here are some of the major improvements in this release over the previous distribution release.

<ul>
<li>Transitive longest-token matching in protoregexes</li>
<li>Longest token matching for alternations</li>
<li>Enhanced list and .map handling, including laziness fixes and performance improvements</li>
<li>Can use an argument list with require</li>
<li>Compile time errors in loaded modules now show a module loading backtrace</li>
<li>String to number conversion now recognizes radix notation</li>
<li>The &amp;push and &amp;unshift functions can now autovivify</li>
<li>Rakudo is now compiled with the same regex engine that user-space</li> regexes use; some parsing bugs are fixed as a result</li>
<li>p6doc is now shipped with Rakudo Star. It is a small collection of user-oriented documentation, along with the `p6doc` script for viewing them.</li>
</ul>

This release also contains a range of bug fixes, improvements to error reporting and better failure modes. More exceptions are thrown as typed exceptions, and more meta-model errors have been fixed to properly report line numbers.

This release contains an important breaking change to number parsing.  Previously, a string such as "foo" would numify to 0. Now this will return a Failure.

There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:

<ul>
<li>macros</li>
<li>threads and concurrency</li>
<li>Unicode strings at levels other than codepoints</li>
<li>interactive readline that understands Unicode</li>
<li>non-blocking I/O</li>
<li>much of Synopsis 9</li>
</ul>

There is a new online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo Star 2012.06 and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed at rakudobug@perl.org.

See http://perl6.org/ for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources.  An updated draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see http://rakudo.org/how-to-help, ask on the perl6-compiler@perl.org mailing list, or join us on IRC #perl6 on freenode.
