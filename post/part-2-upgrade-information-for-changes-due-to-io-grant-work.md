%% title: PART 2: Upgrade Information for Changes Due to IO Grant Work
%% date: 2017-04-03

<p>We're making more changes!</p>

<p>Do the core developers ever sleep? Nope! We keep making Perl 6 better 24/7!</p>

<h2>Why?</h2>
<p>Not more than 24 hours ago, you may have read <a href="http://rakudo.org/2017/04/02/upgrade-information-for-changes-due-to-io-grant-work/">Upgrade Information for Changes Due to IO Grant Work</a>. All of that <b>is still happening.</b></p>
<p>However, it turned out that I, (Zoffix), had an incomplete understanding of how changes in 6.d language will play along with 6.c stuff. My original assumption was we could remove or change existing methods, but that assumption was incorrect. Pretty much the only sane way to incompatibly change <em>a method in an object</em> in 6.d is to add a new method with a different name.</p>
<p>Since I rather us not have, e.g. <code>.child</code> and <code>.child-but-secure</code>, for the next decade, we have a bit of an in-flight course correction:</p>
<p><strong>ORIGINAL PLAN</strong> was to minimize incompatibilities with existing 6.c language code; leave everything potentially-breaking for 6.d</p>
<p><strong>NEW PLAN</strong> is to right away add everything that does NOT break 6.c-errata specification, into 6.c language; leave everything else for 6.d. Note that current 6.c-errata specification for IO is sparse (the reason IO grant is running in the first place), so there's lots of wiggle room to make most of the changes in 6.c.</p>
<h2>When?</h2>
<p>I (Zoffix) still hope to cram all the changes into 2017.04 release. Whether that's overly optimistic, given the time constraints… we'll find out on April 17th. If anything doesn't make it into 2017.04, all of it definitely will be in 2017.05.</p>
<h2>What?</h2>
<p>Along with <a href="http://rakudo.org/2017/04/02/upgrade-information-for-changes-due-to-io-grant-work/">the original list in first Upgrade Information Notice</a>, the following changes may affect your code. I'm <em>excluding any non-conflicting changes.</em></p>
<ul>
<li><code>IO::Path.abspath</code> is being made private. Use <code>IO::Path.absolute</code> instead; it provides the same functionality + lets you optionally provide a different CWD as well.</li>
<li>It was previously possible to use <code>IO::Path.child</code> to create unresolvable paths or paths that are not the children of the invocant's path (e.g. <code>.child: "../../"</code>). This use now causes the method to <code>fail</code> instead, any time the path cannot be determined to be the child of the invocant. <strong>This means the path will be fully resolved and the method will fail if it can't resolve it</strong>. For original functionality, use the newly-added <code>.concat-with</code> method</li>
<li>All IO routines now throw typed exception instead of <code>X::AdHoc</code></li>
<li>We're adding a generic version of <code>IO::ArgFiles</code> called <code>IO::CatHandle</code> (name still subject to bikeshedding) which <code>is IO::Handle</code>. The <code>IO::ArgFiles</code> class will be kept for compatibility, but it'll be just an empty class that <code>is IO::CatHandle</code>. Note that this may modify what methods are available in <code>IO::ArgFiles</code>, however existing methods that aren't horribly broken should not be affected.</li>
<li>This likely does not affect any code, but FYI <code>IO::Path</code>'s methods <code>lines</code>, <code>words</code>, <code>split</code>, and <code>comb</code> previously captured most args and sent them all to <code>IO::Handle.open</code>. Now, only the arguments that make sense in read-only non-binary mode, namely <code>:$chomp</code>, <code>:$enc</code>, and <code>$nl-in</code>, will be forwarded. The rest will be ignored.</li>
</ul>
<p>Potential changes:</p>
<ul>
<li>Currently <code>IO::Path.is-absolute</code> on Windows returns <code>True</code> if the path starts with a [back]slash (without any drive letters). There's some chance this is to be changed to return <code>False</code> instead. This is the only change in direct conflict with 6.c language specification, which is why the current behaviour might be kept unchanged, unless it's deemed incorrect.</li>
</ul>
<p>Changes for 6.d language:</p>
<ul>
<li><code>IO::Handle</code> and <code>IO::Pipe</code>'s <code>.slurp-rest</code> method is being renamed to just <code>.slurp</code>, which will be added in 6.c language. In 6.d language, <code>.slurp-rest</code> will be deprecated, to be removed in later language versions.</li>
<li><code>IO::Path.chdir</code> will be deprecated in 6.d language, to be removed in later language versions. It's a misnomer, as it doesn't change any dirs. It merely creates a new path. Its behaviour can be replaced with one or more of <code>.new</code>, <code>.concat-with</code>, <code>.d</code>, <code>.r</code>, <code>.w</code>, and <code>.x</code> methods. Note that this does NOT affect `&chdir` and `&*chdir` subroutines.</li>
<li>There's some chance <code>IO::Spec::*</code> classes will be deprecated in 6.d, to be removed in a later language version, because they're internal-ish. We'll first have a trial run with the proposed changes implemented in a module (to be named <code>FastIO</code>). If the module offers a lot of benefits, there will be a discussion on how to make it the default implementation for core IO.</li>
</ul>
<h2>Help and More Info</h2>
<p>If you need help or more information, please <a href="https://webchat.freenode.net/?channels=#perl6">join our IRC channel</a> and ask there. You can also contact the person performing this work via <a href="https://twitter.com/zoffix">Twitter @zoffix</a> or by talking to user <code>Zoffix</code> in <a href="https://webchat.freenode.net/?channels=#perl6">our dev IRC channel</a></p>

