%% title: Rakudo Star 2013.05 released
%% date: 2013-05-31

On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the May 2013 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball and Windows .MSI for the May 2013 release are available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a> .

In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/master/docs/announce/2013.05.md">release 2013.05</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 5.3.0 of the <a href="http://parrot.org/">Parrot Virtual Machine</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.

Some of the new features added to this release include:
<ul>
    <li>The ?-quantifier on regex captures now returns a single Match object (formerly returned an array). Use <code>** 0..1</code> to get the old behavior.</li>
    <li>Failed matches return Nil instead of a false Match object.</li>
    <li>Rakudo warns when pure expressions are used in sink context</li>
    <li>.substr(...) now correctly accepts whatever-star closures</li>
    <li>Implemented shellwords postcircumfix (%h&lt;&lt; $x 'foo bar' &gt;&gt;)</li>
    <li>Defining operators spelled like the empty string is now illegal</li>
    <li>Array interpolations now properly do LTM</li>
    <li>Autothread "none" and "all" junctions before "any" and "one"</li>
    <li>Helpful error if you write "else if"/"elif" instead of "elsif"</li>
    <li>Throw exception if a Range is used as a Range endpoint</li>
    <li>Corrected argument order in IO.seek</li>
    <li>wrap low level VM objects in ForeignCode, allowing perl6 OO calls on them</li>
    <li>for loops are eager again</li>
    <li>add link and symlink to IO</li>
    <li>add Capture.Bool()</li>
    <li>improvements to DUMP()</li>
    <li>various optimizations in the optimizer and the runtime</li>
    <li>smartmatch against list now supports Whatever wildcards</li>
    <li>IO::Spec, a port of Perl 5's File::Spec</li>
    <li>regex special characters can be used as delimiters</li>
    <li>allow slice with :exists adverb on hashes</li>
    <li>added 125 extra opening/closing bracket-pairs</li>
</ul>
This release also contains a range of bug fixes, improvements to error reporting and better failure modes.

The following features have been deprecated or modified from previous releases due to changes in the Perl 6 specification, and are planned to be removed or changed as follows:
<ul>
    <li><code>postcircumfix:&lt;[ ]&gt;</code> and <code>postcircumfix:&lt;{ }&gt;</code> will become multi-subs rather than multi-methods. Both at_pos and at_key will remain methods.</li>
    <li>Unary hyper ops currently descend into nested arrays and hashes. This will change to make them equivalent to a one-level map.</li>
    <li>The Str.ucfirst builtin is deprecated; it will be replaced by Str.tc.</li>
    <li>Leading whitespace in rules and under :sigspace will no longer be converted to <code>&lt;.ws&gt;</code>. For existing regexes that expect this conversion, add a <code>&lt;?&gt;</code> in front of leading whitespace to make it meta again.</li>
    <li>The result of failed matches will be Nil instead of a Match object returning boolean False.</li>
</ul>
There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases. Some of the not-quite-there features include:
<ul>
    <li>advanced macros</li>
    <li>threads and concurrency</li>
    <li>Unicode strings at levels other than codepoints</li>
    <li>interactive readline that understands Unicode</li>
    <li>non-blocking I/O</li>
    <li>much of Synopsis 9</li>
</ul>
There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo and other Perl 6 implementations.

In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="mailto:rakudobug@perl.org">rakudobug@perl.org</a>.

See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in the release tarball.

The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a> mailing list, or join us on IRC #perl6 on freenode.