%% title: Advance Notice: Lexical Module Loading Bug Fix
%% date: 2016-12-17

<p style="font-size: 115%">Please note that the <strong>NEXT</strong> (January 2017) release of the Rakudo Compiler will include a fix for a bug some may be relying on under the assumption of it being a feature. For details, please see the explanation below. If you have any further questions, please <a href="https://webchat.freenode.net/?channels=#perl6">ask us on our irc.freenode.net/#perl6 IRC channel</a>.</p>

<h2>What</h2>

<p>Perl 6 takes great care to avoid global state, i.e. whatever you do in your module, it should not affect other code. That's why e.g. subroutine definitions are lexically (<code>my</code>) scoped by default. If you want others to see them, you need to explicitly make them <code>our</code> scoped or export them.</p>

<p>Classes are exported by default on the assumption that loading a module will not be of much use when you cannot access the classes it contains. This works as advertised with a small but important caveat. Those classes are not only visible in the computation unit that loads the module, but globally. This means that as soon as some code loads a module, those classes are immediately visible everywhere.</p>

<p>For example, given a module Foo:</p>

<div class="highlight highlight-source-perl6fe"><pre style="font-size: 14px; font-family: monospace">unit <span style="color: blue;">class</span> <span class="pl-en">Foo</span>;
<span style="color: blue;">use</span> Bar;</pre></div>

<p>And your own program:</p>

<div class="highlight highlight-source-perl6fe"><pre style="font-size: 14px; font-family: monospace"><span style="color: blue;">use</span> Foo;
<span style="color: blue;">my</span> <span style="color: #440;">$</span><span style="color: #440;">foo</span> <span style="color: blue;">=</span> Foo<span style="color: blue;">.</span><span style="color: #449;">new</span>; <span style="color: #999;"># works as expected</span>
<span style="color: blue;">my</span> <span style="color: #440;">$</span><span style="color: #440;">bar</span> <span style="color: blue;">=</span> Bar<span style="color: blue;">.</span><span style="color: #449;">new</span>; <span style="color: #999;"># huh!? Where is Bar coming from?</span></pre></div>

<h2>Why</h2>

<p>This doesn't sound so bad (it at least saves you some typing), except for that it makes another feature of Perl 6 impossible to have: <em>the ability to load multiple versions of a module at the same time in different parts of your program:</em></p>

<div class="highlight highlight-source-perl6fe"><pre style="font-size: 14px; font-family: monospace">{
    <span style="color: blue;">use</span> Baz<span style="color: blue;">:</span>ver(v1);
    <span style="color: blue;">my</span> <span style="color: #440;">$</span><span style="color: #440;">old-baz</span> <span style="color: blue;">=</span> Baz<span style="color: blue;">.</span><span style="color: #449;">new</span>;
}
{
    <span style="color: blue;">use</span> Baz<span style="color: blue;">:</span>ver(v2);
    <span style="color: blue;">my</span> <span style="color: #440;">$</span><span style="color: #440;">shiny-new-baz</span> <span style="color: blue;">=</span> Baz<span style="color: blue;">.</span><span style="color: #449;">new</span>;
}</pre></div>

<p>This will explode as on loading <code>Baz:ver(v2)</code>, rakudo will complain about "Baz" already being defined.</p>

<h2>What To Do</h2>

<p>To fix this, we no longer register loaded classes globally but only in the scope which loaded them in the first place. Coming back to our first example, we would <strong>need to explicitly load</strong> Bar in the main program:</p>

<div class="highlight highlight-source-perl6fe"><pre style="font-size: 14px; font-family: monospace"><span style="color: blue;">use</span> Foo;
<span style="color: blue;">use</span> Bar;
<span style="color: blue;">my</span> <span style="color: #440;">$</span><span style="color: #440;">foo</span> <span style="color: blue;">=</span> Foo<span style="color: blue;">.</span><span style="color: #449;">new</span>; <span style="color: #999;"># still works of course</span>
<span style="color: blue;">my</span> <span style="color: #440;">$</span><span style="color: #440;">bar</span> <span style="color: blue;">=</span> Bar<span style="color: blue;">.</span><span style="color: #449;">new</span>; <span style="color: #999;"># now it's clear where Bar is coming from</span></pre></div>

<p>So if you suddenly get an "Undeclared name: Bar" error message after upgrading to a newer Perl 6 compiler, you will most probably <strong>just need to add</strong> a: "use Bar;" to your code.</p>
