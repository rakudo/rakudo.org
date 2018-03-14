use strict;
use Module::Build;

my $build = Module::Build->new(
    module_name        => 'RakudoOrg',
    dist_abstract      => 'rakudo.org website',
    dist_name          => 'rakudo.org',
    dist_author        => 'Perl 6 Hackers',
    license            => 'perl',
    create_makefile_pl => 'passthrough',
    dist_version => '0.1',
    recursive_test_files => 1,
    requires => {
      'File::Glob'                       => '0',
      'Mojo::Base'                       => '0',
      'Time::Moment'                     => '0.43',
      'Mojo::File'                       => '0',
      'Mojo::Util'                       => '0',
      'Mojolicious'                      => '7.31',
      'Mojolicious::Lite'                => '0',
      'Mojolicious::Plugin::AssetPack'   => '1.42',
      'Text::MultiMarkdown'              => '1.000035',
      'strict'                           => '0',
      'warnings'                         => '0',

    }
);
$build->create_build_script;