%% title: Upgrade Information for Changes Due to IO Grant Work
%% date: 2017-04-02

<p>As <a href="http://rakudo.org/2017/02/26/advance-notice-of-significant-changes/">previously notified</a>, there are changes being made to IO routines. This notice is to provide details on changes that may affect currently-existing code.</p>
<h2>When?</h2>
<p>Barring unforeseen delays, the work affecting version 6.c language is planned to be included in 2017.04 Rakudo Compiler release (planned for release on April 17, 2017) on which next Rakudo Star release will be based.</p>
<p>Some or all of the work affecting 6.d language may also be included in that release and will be available if the user uses <code>use v6.d.PREVIEW</code> pragma. Any 6.d work that doesn't make it into 2017.04 release, will be included in 2017.05 release.</p>
<p>If you use development commits of the compiler (e.g. <code>rakudobrew</code>), you will
receive this work as-it-happens.</p>
<h2>Why?</h2>
<p>If you only used documented features, the likelihood of you needing to change any of your code is low. The 6.c language changes due to IO Grant work affect either routines that are rarely used or undocumented routines that might have been used by users assuming they were part of the language.</p>
<h2>What?</h2>
<p>This notice describes only <strong>changes affecting existing code</strong> and only for <strong>6.c language</strong>. It does <strong>NOT</strong> include any non-conflicting changes or changes slated for 6.d language. If you're interested in the full list of changes, you can find it in <a href="https://github.com/rakudo/rakudo/blob/master/docs/2017-IO-Grant--Action-Plan.md">the IO Grant Action Plan</a></p>
<p>The changes that may affect existing code are:</p>
<ul>
<li><code>role IO</code> together with its <code>IO.umask</code> method have been removed without any replacement</li>
<li>Methods <code>.watch</code>, <code>.chmod</code>, <code>.IO</code>, <code>.e</code>, <code>.d</code>, <code>.f</code>, <code>.s</code>, <code>.l</code>, <code>.r</code>, <code>.w</code>, <code>.x</code>, <code>.modified</code>, <code>.accessed</code>, <code>.changed</code>, and <code>.mode</code> have been removed from <code>IO::Handle</code>. You can call these on the path returned by <code>IO::Handle.path</code> method to obtain the same behaviour</li>
<li><code>:test</code> parameter on <code>&amp;chdir</code>, <code>IO::Path.chdir</code>, and <code>&amp;indir</code> routines have been changed to issue a deprecation warning and will be removed in 6.d language. In addition, the default test performed by these routines has been changed to be only a test for whether the path is a directory. To upgrade your code for this change, simply use named parameters for the test. e.g replace <code>chdir :test&lt;r w x&gt; …</code> with <code>chdir :r, :w, :x …</code></li>
<li>binary mode in <code>IO::Handle.Supply</code> is now controlled by whether the handle
is in binary mode (e.g. opened with <code>.open(:bin …)</code>). The <code>:bin</code> argument to <code>.Supply</code> is now ignored.</li>
<li>In 2017.03 release, <code>IO::Path.lines</code> was made non-lazy (slurps the whole file). This has now been reverted. To ensure the filehandle gets closed, you need to exhaust the returned Seq (simply iterate through it; <code>eager</code> it explicitly or implicitly (e.g. by assigning to array); or call <code>.sink</code> on it)</li>
<li>The order of arguments to <code>&amp;link</code> and <code>&amp;symlink</code> has been reversed. It now follows <code>$existing-thing, $thing-we-are-creating</code> pattern adhered to by <code>ln</code> command line tool as well as <code>&amp;move</code>, <code>&amp;copy</code> and <code>&amp;rename</code> routines</li>
<li><code>IO::Handle.lock</code> no longer takes an <code>Int:D</code> argument, but a pair of named arguments instead. By default, it makes an exclusive, blocking lock. Use <code>:shared</code> named argument to make a shared lock instead and <code>:non-blocking</code> to make the method fail instead of waiting for lock.</li>
<li><code>IO::Path.new-from-absolute-path</code> is now a private method. Use <code>.IO</code> coercer or <code>IO::Path.new: $the-path</code> instead</li>
<li><code>&amp;homedir</code> has been removed. Use <code>$*HOME</code> dynamic variable directly.</li>
<li><code>&amp;tempdir</code> has been removed. Use <code>$*TMPDIR</code> dynamic variable directly.</li>
<li>IO routines that used to throw will now <code>fail</code> instead.</li>
</ul>
<h3>Help and More Info</h3>
<p>If you need help or more information, please <a href="https://webchat.freenode.net/?channels=#perl6">join our IRC channel</a> and ask there. You can also contact the person performing this work via <a href="https://twitter.com/zoffix">Twitter @zoffix</a> or by talking to user <code>Zoffix</code> in <a href="https://webchat.freenode.net/?channels=#perl6">our dev IRC channel</a></p>
