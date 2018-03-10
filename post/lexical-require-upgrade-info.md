%% title: Upgrade Information for Lexical require
%% date: 2017-03-18

<article class="markdown-body entry-content" itemprop="text">
<h2>What's Happening?</h2>
<p>Rakudo Compiler release 2017.03 includes the final piece of lexical module loading work: lexical <code>require</code>. This work was first announced in December, in <a href="http://rakudo.org/2016/12/17/lexical-module-loading/">http://rakudo.org/2016/12/17/lexical-module-loading/</a></p>
<p>There are two changes that may impact your code:</p>
<ul>
<li><code>require</code> now imports symbols lexically. If you <code>require</code> inside a block, the symbols won't be available outside of it.</li>
<li>Compile-time <code>require</code> installs a placeholder <code>package</code> symbol that remains available even if required item was not found.</li>
</ul>
<h2>Upgrade Information</h2>
<h3>Lexical Symbols</h3>
<p><em><strong>WRONG:</strong></em></p>
<pre><code># WRONG:
try { require Foo; 1 } and ::('Foo').new;
</code></pre>
<p>The <code>require</code> above is inside a block and so its symbols won't be available
outside of it and the look up will fail.</p>
<p><em><strong>CHANGE TO:</strong></em></p>
<pre><code>(try require Foo) !=== Nil and ::('Foo').new;
</code></pre>
<p>Now the <code>require</code> installs the symbols into scope that's lexically accessible
to the <code>::('Foo')</code> look up.</p>
<h3>Optional Loading</h3>
<p><em><strong>WRONG:</strong></em></p>
<pre><code># WRONG:
try require Foo;
if ::('Foo') ~~ Failure {
    say "Failed to load Foo!";
}
</code></pre>
<p>This construct installs a <code>package</code> named <code>Foo</code>, which would be replaced by the
loaded <code>Foo</code> if it were found, but if it weren't, the <code>package</code> will remain a
<code>package</code>, not a <code>Failure</code>, and so the above <code>~~</code> test will always be <code>False</code>.</p>
<p><em><strong>CHANGE TO:</strong></em></p>
<pre><code># Use return value to test whether loading succeeded:
(try require Foo) === Nil and say "Failed to load Foo!";

# Or use a run-time symbol lookup with require, to avoid compile-time
# package installation:
try require ::('Foo');
if ::('Foo') ~~ Failure {
    say "Failed to load Foo!";
}
</code></pre>
<p>In the first example above, we test the return value of <code>try</code> isn't <code>Nil</code>, since
on successful loading it will be a <code>Foo</code> module, class, or package.</p>
<p>The second example uses a run-time symbol lookup in <code>require</code> and so it never needs
to install the <code>package</code> placeholder during the compile time. Therefore, the
<code>::('Foo') ~~</code> test <em>does</em> work as intended.</p>
<h2>Help and More Info</h2>
<p>If you require help or more information, please join our chat channel
<a href="https://webchat.freenode.net/?channels=#perl6">#perl6 on irc.freenode.net</a></p>
</article>