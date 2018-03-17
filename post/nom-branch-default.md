%% title: 'nom' branch is now default, release status
%% date: 2011-09-09

I've just now switched the Rakudo repository on GitHub such that the default branch is now "nom" instead of "master".  The nom branch is where nearly all significant Rakudo development has taken place over the last several months -- over 1,800 commits since being forked from the 'master' branch back in April.

In order to avoid confusion with git's conventional use of the "master" branch name, I've now renamed "master" to "ng" (the branch's original name from early 2010).  However, most Rakudo developers will likely refer to the version of Rakudo in this older branch as either "2011.07" or "Beijing", these being the tagnames of the final compiler release from that particular branch.

We have not as yet created a 2011.08 release based on nom.  After much useful discussion and contributions from people on #perl6, I feel that there are still too many feature regressions and some performance regressions that really need to be addressed before making a release.  Ultimately, it comes down to something like "It's far better to explain and justify delaying a release than to issue a release that we know will cause problems for our clients."

I don't want to specify an exact date for the next release; certainly it will occur within the next three weeks.  As in previous announcements, we continue to recommend using the Rakudo Star 2011.07 release until the releases from the new development line are ready.

We did discuss the possibility of simply creating a 2011.08 release from the old branch, but since it would be essentially identical to the 2011.07 that doesn't seem to serve much purpose other than to fill a slot, so we've decided against that.

Today I'm planning to begin updating the perl6 RT ticket queue to reflect things as they stand after the branch rename.  I
expect many tickets to be closed due to the many fixes that nom brings.  New incoming tickets will now be evaluated against the 'nom' branch, and it's okay to file tickets for regressions from 2011.07.  (Perhaps cut us a little slack for a week or two on this, though.) More details on the RT ticket queue will be described in an upcoming message.

Comments and questions can be sent to the perl6-users@perl.org and perl6-compiler@perl.org mailing lists, or join us on IRC
freenode/#perl6 and ask there.

Pm