%% title: Announce: Windows (64 bit) Installer for Rakudo Star 2016.04
%% date: 2016-05-03

A Windows MSI installer is now available for x86_64 (64bit) platforms (probably Windows 7 or better) and has the JIT (Just in Time compiler) enabled.  This version was built with mingw (from Strawberry Perl) rather than the usual MSVC which may have performance implications. In order to use the module installer "panda" you will also need to install Strawberry Perl and Git for Windows. Also see <a href="http://www.perl6.org/downloads/">http://www.perl6.org/downloads/</a> for Errata notices concerning panda.

Unfortunately the usual second installer targeting x86 (32bit) platforms isn't currently available.  It's hoped this will be available in the near future and until then the previous 2016.01 is recommended for x86 (32bit). No 32 bit versions feature the JIT. MSIs are available from <a href="http://rakudo.org/downloads/star/">http://rakudo.org/downloads/star/</a>.