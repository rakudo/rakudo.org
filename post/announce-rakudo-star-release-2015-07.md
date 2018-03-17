%% title: Announce: Windows MSI Installers for release 2015.07
%% date: 2015-07-27

<h2>A useful, usable, "early adopter" distribution of Perl 6</h2>

<p>On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the July 2015 release of "Rakudo Star", a useful and usable distribution of Perl 6. The tarball for the July 2015 release is available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.</p>

<p>This Rakudo Star release comes with support for the MoarVM backend (all module tests pass on supported platforms).</p>

<p>In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". This Star release includes <a href="https://github.com/rakudo/rakudo/blob/nom/docs/announce/2015.07.md">release 2015.07.2</a> of the <a href="http://github.com/rakudo/rakudo">Rakudo Perl 6 compiler</a>, version 2015.07 of <a href="http://moarvm.org/">MoarVM</a>, plus various modules, documentation, and other resources collected from the Perl 6 community.</p>

<p>Some of the new compiler features added to this release include:</p>

<ul>
<li>Cool.substr(-rw) and &amp;substr(-rw) now also accept a Range</li>
<li>Added trait "is required" on class attributes</li>
<li>&amp;?ROUTINE and &amp;?BLOCK</li>
<li>&amp;words implemented (to completement .words)</li>
<li>Numeric comparison ops (== > etc) for DateTimes</li>
<li>samewith() now also works in subs</li>
<li>Calling the .clone method with alternate values no longer changes original</li>
<li>.grep and &amp;grep now consume multiple elements for many-param blocks</li>
<li>ENTER phaser now can be used as an r-value</li>
</ul>

<p>Notable changes in modules shipped with Rakudo Star:</p>

<ul>
<li>Bailador: Add links to documentation</li>
<li>DBIish: Use Postgres environment variables for test configuration</li>
<li>doc: More documentation, mostly for IO-related classes and methods</li>
</ul>

<p>There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases.  Some of the not-quite-there features include:</p>

<ul>
<li>advanced macros</li>
<li>non-blocking I/O (in progress)</li>
<li>much of Synopsis 9 and 11</li>
</ul>

<p>There is an online resource at <a href="http://perl6.org/compilers/features">http://perl6.org/compilers/features</a> that lists the known implemented and missing features of Rakudo's backends and other Perl 6 implementations.</p>

<p>In many places we've tried to make Rakudo smart enough to inform the programmer that a given feature isn't implemented, but there are many that we've missed. Bug reports about missing and broken features are welcomed at <a href="&#109;&#x61;&#105;&#108;&#116;&#111;:&#x72;&#97;&#x6B;&#x75;&#x64;&#111;&#98;&#117;&#103;&#64;&#112;&#101;&#x72;l&#x2E;o&#114;&#103;">&#x72;&#97;&#x6B;&#x75;&#x64;&#111;&#98;&#117;&#103;&#64;&#112;&#101;&#x72;l&#x2E;o&#114;&#103;</a>.</p>

<p>See <a href="http://perl6.org/">http://perl6.org/</a> for links to much more information about Perl 6, including documentation, example code, tutorials, reference materials, specification documents, and other supporting resources. A draft of a Perl 6 book is available as docs/UsingPerl6-draft.pdf in the release tarball.</p>

<p>The development team thanks all of the contributors and sponsors for making Rakudo Star possible. If you would like to contribute, see <a href="http://rakudo.org/how-to-help">http://rakudo.org/how-to-help</a>, ask on the <a href="&#x6D;&#x61;&#105;l&#x74;&#x6F;:&#x70;er&#108;&#54;&#45;&#x63;&#x6F;&#x6D;&#112;&#105;&#108;&#101;&#x72;&#64;&#112;&#x65;&#114;&#108;&#46;&#x6F;&#114;&#103;">&#x70;er&#108;&#54;&#45;&#x63;&#x6F;&#x6D;&#112;&#105;&#108;&#101;&#x72;&#64;&#112;&#x65;&#114;&#108;&#46;&#x6F;&#114;&#103;</a> mailing list, or join us on IRC #perl6 on freenode.</p>

