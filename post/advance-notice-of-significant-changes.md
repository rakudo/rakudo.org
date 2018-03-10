%% title: Advance Notice of Significant Changes
%% date: 2017-02-26

<img style="width: 100%" src="https://raw.githubusercontent.com/zoffixznet/debug/133cd87bf1334511e8308df97e75f8610e9744b1/assets/IOsomeness.png" alt="" />

<h1 id="advancenoticeofsignificantchanges">Advance Notice of Significant Changes</h1>

<p>As part of <a href="http://news.perlfoundation.org/2017/01/grant-proposal-standardization.html">the IO grant</a> run by The Perl Foundation, we're improving our IO-related methods and subroutines. We've identified several of the changes that will have moderate
impact on the users and may require you to update your code.</p>

<p>The exact changes to be made will be known by March 18th, 2017 and the
implementation will be part of the 2017.04 Rakudo compiler release on April,
15th, which will be followed by the 2017.04 Rakudo Star Perl 6 release.</p>

<h2 id="details">Details</h2>

<h3 id="whyarewechangingstuff">Why Are We Changing Stuff?</h3>

<p>Our contract with the users is we don't change anything that's covered
by the Perl 6.c language version tests. This means most of the language
remains reliably stable, but IO features got short-changed on the love. The
tests for them are sparse—a big reason why the IO grant is running in the
first place—which gives core developers a lot of freedom to change them
and <em>to improve</em> them.</p>

<p>Despite that freedom, we realize broken code isn't a nice thing, and will
attempt to reduce the impact of the changes, by providing backwards compatible
interface to support old API, where feasible. Where not, we will provide
information of the upcoming changes; this notice is a part of that effort.</p>

<h3 id="whatschanging">What's Changing?</h3>

<p>The grant covers all of IO routines and methods (excluding sockets). All of the
final changes are yet to be deliberated and ratified and we'll share the
details once they're known.</p>

<p>Currently, it is speculated that <code>link()</code> routine will change the order
of arguments (no backwards compatible support will be provided) and <code>seek()</code>
routine will take seek reference as a named argument instead of an enum value
(backwards compatible support <em>will</em> be provided).</p>

<p>It's very likely many more changes will be made. We'll be using the code of
all the modules in the ecosystem to judge the potential impact of the change
and evaluate each change on a case-by-case basis.</p>

<h3 id="timeline">Timeline</h3>

<ul>
<li><strong>March 18, 2017:</strong> finalized information on the changes will be known to the
Core Team. Upgrade instructions for users will follow shortly after.</li>
<li><strong>April 15, 2017:</strong> all of the changes will be completed and 2017.04
compiler release will be made. Rakudo Star Perl 6 distribution will
be created from this release in the following week or two.</li>
</ul>

<h3 id="helpandmoreinfo">Help and More Info</h3>

<p>If you need help or more information, please <a href="https://webchat.freenode.net/?channels=#perl6">join our IRC channel</a> and ask there. You can also contact the person performing this work via <a href="https://twitter.com/zoffix">Twitter @zoffix</a> (<i>Zoffix</i> on IRC in <a href="https://webchat.freenode.net/?channels=#perl6">#perl6-dev</a>)</p>
