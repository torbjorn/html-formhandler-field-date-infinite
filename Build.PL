use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'HTML::FormHandler::Field::Date::Infinite',
    license             => 'artistic2',
    dist_author         => 'Torbjørn Lindahl <torbjorn.lindahl@gmail.com>',
    dist_version_from   => 'lib/HTML/FormHandler/Field/Date/Infinite.pm',
    requires => {
        'DateTime'            => '1.03',
        'Moose'               => '2.0802',
        'Test::FailWarnings'  => '0.005',
        'Test::Most'          => '0.25',
        'Test::Perl::Critic'  => '1.02',
        'Test::Pod'           => '1.45',
        'Test::Pod::Coverage' => '1.08',
    },
    add_to_cleanup      => [ 'HTML-FormHandler-Field-Date-Infinite-*' ],
);

$builder->create_build_script();
