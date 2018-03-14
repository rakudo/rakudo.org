# Rakudo.org

This is the source code for <https://rakudo.org>.

## Installation

To install into `rakudo.org` dir in current directory run:

    git clone https://github.com/perl6/rakudo.org &&
    cd rakudo.org &&
    cpanm -vn --installdeps .

*Optionally*, copy the Rakudo Star, Rakudo, and NQP binaries into `binaries/`
directory. You can use a different directory, but ensure to change it
accordingly in `conf.conf` file, under `binaries_dir` key.

    mkdir binaries
    cp -R ~/some-location-with-binaries/* binaries/

To star development server, run:

    ./morbo

To start production server, run:

    ./hyp

If you need to stop it entirely later, run `hypnotoad app.pl --stop`

The servers listen on localhost, port `4242`: http://localhost:4242

### Debug Aid

Some areas of the site are platform-specific (e.g. showing a download
link to a `.deb` file if the visitor is using Ubuntu). You can force a view
for a specific platform by using `platform` query parameter. See
`process_platform_specific_content()` in `assets/main.js` for valid values.

### LICENSE

See [LICENSE](LICENSE) file for the details of the license of the code in this repository.

This repository also contains code authored by third parties that may be licensed under a different license. Such
files indicate the copyright and license terms at the top of the file. Currently these include:

* jQuery and jQuery UI libraries: Copyright 2015 jQuery Foundation and other contributors; [MIT License](http://creativecommons.org/licenses/MIT)
* The Camelia image is copyright 2009 by Larry Wall. Permission to use is granted under the [Artistic License 2.0](License), or any subsequent version
of the Artistic License.
* [Cover template](http://getbootstrap.com/docs/4.0/examples/cover/)
    for Bootstrap, by [`@mdo`](https://twitter.com/mdo)
* [OpenIconic](https://useiconic.com/open/) icons are licensed under
    [MIT License](http://creativecommons.org/licenses/MIT) and its fonts
    are licensed under SIL OPEN FONT LICENSE Version 1.1.
* [platform.js](https://github.com/bestiejs/platform.js) is licensed under
    [MIT License](http://creativecommons.org/licenses/MIT)
* Twitter footer icon by `blk` from
    [ShareIcon](https://www.shareicon.net/twitter-93943),
    [MIT License](http://creativecommons.org/licenses/MIT)
* IRC people icon
    from [ShareIcon](https://www.shareicon.net/people-queue-crowd-line-stick-man-722560)