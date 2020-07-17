use strict;
use Module::Build;

my $build = Module::Build->new(
    module_name        => 'RakudoOrg',
    dist_abstract      => 'rakudo.org website',
    dist_name          => 'rakudo.org',
    dist_author        => 'Perl 6 Hackers',
    license            => 'perl',
    create_makefile_pl => 'passthrough',
    dist_version => '0.2',
    recursive_test_files => 1,
    requires => {
      'CSS::Minifier::XS'                => '0.09',
      'CSS::Sass'                        => '3.6.3',
      'File::Glob'                       => '0',
      'File::Temp'                       => '0.2309',
      'File::Spec::Functions'            => 0,
      'IO::Socket::SSL'                  => '2.068',
      'JavaScript::Minifier::XS'         => '0.11',
      'Mojo::Base'                       => '0',
      'Mojo::Collection'                 => '0',
      'Mojo::File'                       => '0',
      'Mojo::Util'                       => '0',
      'Mojo::SQLite'                     => '3.003',
      'Mojolicious'                      => '8.56',
      'Mojolicious::Lite'                => '0',
      'Mojolicious::Plugin::AssetPack'   => '2.08',
      'Sort::Versions'                   => '1.62',
      'POSIX'                            => '0',
      'strict'                           => '0',
      'Text::MultiMarkdown'              => '1.000035',
      'Test::Most'                       => '0.37',
      'Time::Moment'                     => '0.44',
      'warnings'                         => '0',
    }
);
$build->create_build_script;
