%% title: Upcoming Rakudo releases
%% date: 2011-07-19

Over the past 6+ months the Rakudo developers have been working on a <a href="http://pmthium.com/2011/02/08/new-nqp-repository-new-nom-rakudo-branch/">new version of the Rakudo compiler</a> (code named "nom") that uses a <a href="http://6guts.wordpress.com/2011/05/10/rakudo-on-6model-gets-underway/">new object model implementation</a>, has lots of bugfixes, and contains many <a href="http://pmthium.com/2011/07/02/more-nom-features-and-spectests-still-5x-faster-than-master/">performance</a> <a href="http://perlgeek.de/blog-en/perl-6/how-fast-is-nom.html">enhancements</a> over the existing version.

We plan to switch over all mainline development for Rakudo to this new branch within the next couple of weeks.  As a result, the upcoming July 2011 releases of the compiler and Rakudo Star will be the last releases to use the older compiler codebase.

In early August, sometime prior to or concurrent with YAPC::EU, we plan to issue another "distribution release" based on the new compiler implementation, and will encourage newcomers to Rakudo Perl 6 to start with that distribution release.  We haven't yet decided if the new distribution will continue the "Rakudo Star" series of distribution releases or will constitute a new phase of releases.

Existing users of Rakudo Star can continue to use the July 2011 releases and have some comfort of stability with previous Star releases, but should be aware that we expect future releases of Rakudo to come from the new compiler.  We will be developing a list of deprecations and guidelines for migrating programs from the older compiler to the new one.

We also plan to hold an online hackathon on July 30th on IRC #perl6 to focus on updating Perl 6 modules in the Star distribution to work with the new compiler implementation.  In many cases the modules will not require any modifications to work, but there are some cases where changes to the Perl 6 language and/or the fixing of bugs in Rakudo may require a change to the module.  Our goal and expectation is to have a module-compatible update for Rakudo Star in either August 2011 or September 2011.

In short, we expect there to be a flurry of "releases" of various Rakudo components over the next couple of months.  If you're looking for stability in that time, we recommend sticking with the July release of Rakudo Star while we iron out the new features.  If you're looking to learn Perl 6 or start a new project, we recommend starting with the new releases that will be coming out in August.
