%% title: Windows .msi available for Rakudo Star 2012.07
%% date: 2012-07-30

I'm pleased to announce that starting with the current Rakudo Star release (2012.07), we will now be providing Windows .msi distributions with precompiled binaries for Rakudo Star.  The .msi distribution is available in the same location as other Rakudo Star releases, at <a href="https://github.com/rakudo/star/downloads/">https://github.com/rakudo/star/downloads/</a> .

On this site, on IRC, and at <a href="http://www.yapcna.org/">YAPC::NA 2012</a> I heard many people comment that Windows users really wanted a binary install option.  We've occasionally done .msi and .exe installers for Rakudo Star releases in the past, but didn't have any dedicated tools or sufficient environments to be able to produce them consistently each month.  So, this month I dedicated some time to create scripts and tools that can automate much of the process of building .msi distributions from the Rakudo Star release tarballs.  Over the next couple of weeks I will be documenting the process so that others can hopefully follow it as well.  With the new tools in place I think we'll be able to consistently provide Rakudo .msi distributions within a few days (if not hours) of each monthly tarball release.

(At this time I can't guarantee that .msi files will always be published at the same time
as the standard tarballs, because some monthly release managers may not have access to a suitable Widnows environments for building the .msi.  Bear with us while we work out the full release details.  :-) )

This is still a newish process for us, so if you encounter any problems with the .msi distribution, let us know on IRC #perl6, <a href="http://rakudo.org/tickets/">file a bug ticket</a>, or send a note to <a href="mailto:perl6-users@perl.org">perl6-users@perl.org</a> or <a href="mailto:perl6-compiler@perl.org">perl6-compiler@perl.org</a>.

Enjoy!