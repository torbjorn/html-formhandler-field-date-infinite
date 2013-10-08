use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'HTML::FormHandler::Field::Date::Infinite',
    license             => 'artistic2',
    dist_author         => 'Torbjørn Lindahl <torbjorn.lindahl@gmail.com>',
    dist_version_from   => 'lib/HTML/FormHandler/Field/Date/Infinite.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'HTML-FormHandler-Field-Date-Infinite-*' ],
);

$builder->create_build_script();
