%% title:  Rakudo Star - "early adopter" distribution of Perl 6
%% date: 2010-07-29

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the July 2010 release of "Rakudo Star", a useful and usable distribution  of Perl 6.  The tarball for the July 2010 release is available from <a href='http://github.com/rakudo/star/downloads'>http://github.com/rakudo/star/downloads</a>.</p>
<p>Rakudo Star is aimed at "early adopters" of Perl 6.  We know that it still has some bugs, it is far slower than it ought to be, and there are some advanced pieces of the Perl 6 language specification that aren't implemented yet.  But Rakudo Perl 6 in its current form is also proving to be viable (and fun) for developing applications and exploring a great new language.  These "Star" releases are intended to make Perl 6 more widely available to programmers, grow the Perl 6 codebase, and gain additional end-user feedback about the Perl 6 language and Rakudo's implementation of it.</p>
<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl".  "Rakudo Star" is a distribution that includes release #31 of the Rakudo Perl 6 compiler [1], version 2.6.0 of the Parrot Virtual Machine [2], and various modules, documentation, and other resources collected from the Perl 6 community.  We plan to make Rakudo Star releases on a monthly schedule, with occasional special releases in response to important bugfixes or changes.</p>
<p>Some of the many cool Perl 6 features that are available in this release of Rakudo Star:</p>
<ul>
<li>Perl 6 grammars and regexes</li>
<li>formal parameter lists and signatures</li>
<li>metaoperators</li>
<li>gradual typing</li>
<li>a powerful object model, including roles and classes</li>
<li>lazy list evaluation</li>
<li>multiple dispatch</li>
<li>smart matching</li>
<li>junctions and autothreading</li>
<li>operator overloading (limited forms for now)</li>
<li>introspection</li>
<li>currying</li>
<li>a rich library of builtin operators, functions, and types</li>
<li>an interactive read-evaluation-print loop</li>
<li>Unicode at the codepoint level</li>
<li>resumable exceptions</li>
</ul>
<p>There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Thus, we do not consider Rakudo Star to be a "Perl 6.0.0" or "1.0" release.  Some of the not-quite-there features include:</p>
<ul>
<li>nested package definitions</li>
<li>binary objects, native types, pack and unpack</li>
<li>typed arrays</li>
<li>macros</li>
<li>state variables</li>
<li>threads and concurrency</li>
<li>Unicode strings at levels other than codepoints</li>
<li>pre and post constraints, and some other phasers</li>
<li>interactive readline that understands Unicode</li>
<li>backslash escapes in regex &lt;[...]&gt; character classes</li>
<li>non-blocking I/O</li>
<li>most of Synopsis 9</li>
<li>perl6doc or pod manipulation tools</li>
</ul>
<p>In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed.  Bug reports about missing and broken features are welcomed.</p>
<p>See <a href='http://perl6.org/'>http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources.</p>
<p>Rakudo Star also bundles a number of modules; a partial list of the modules provided by this release include:</p>
<ul>
<li>  Blizkost - enables some Perl 5 modules to be used from within Rakudo Perl 6</li>
<li>  MiniDBI - a simple database interface for Rakudo Perl 6</li>
<li>  Zavolaj - call C library functions from Rakudo Perl 6</li>
<li>  SVG and SVG::Plot - create scalable vector graphics</li>
<li>  HTTP::Daemon - a simple HTTP server</li>
<li>  XML::Writer - generate XML</li>
<li>  YAML - dump Perl 6 objects as YAML</li>
<li>  Term::ANSIColor - color screen output using ANSI escape sequences</li>
<li>  Test::Mock - create mock objects and check what methods were called</li>
<li>  Math::Model - describe and run mathematical models</li>
<li>  Config::INI - parse and write configuration files</li>
<li>  File::Find - find files in a given directory</li>
<li>  LWP::Simple - fetch resources from the web</li>
</ul>
<p>These are not considered "core Perl 6 modules", and as module development for Perl 6 continues to mature, future releases of Rakudo Star will likely come bundled with a different set of modules. Deprecation policies for bundled modules will be created over time, and other Perl 6 distributions may choose different sets of modules or policies.  More information about Perl 6 modules can be found at <a href='http://modules.perl6.org/'>http://modules.perl6.org</a>.</p>
<p>Rakudo Star also contains a draft of a Perl 6 book -- see "docs/UsingPerl6-draft.pdf" in the release tarball.</p>
<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible.  If you would like to contribute, see <a href='http://rakudo.org/how-to-help'>http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.</p>
<p>Rakudo Star releases are created on a monthly cycle or as needed in response to important bug fixes or improvements.  The next planned release of Rakudo Star will be on August 24, 2010.</p>
<p>[1] <a href='http://github.com/rakudo/rakudo'>http://github.com/rakudo/rakudo</a><br/>[2] <a href='http://parrot.org/'>http://parrot.org/</a></br/></p>