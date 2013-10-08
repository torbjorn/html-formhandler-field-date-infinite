use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'HTML::FormHandler::Field::Date::Infinite',
    AUTHOR              => 'Torbjørn Lindahl <torbjorn.lindahl@gmail.com>',
    VERSION_FROM        => 'lib/HTML/FormHandler/Field/Date/Infinite.pm',
    ABSTRACT_FROM       => 'lib/HTML/FormHandler/Field/Date/Infinite.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'DateTime'            => '1.03',
        'Moose'               => '2.0802',
        'Test::FailWarnings'  => '0.005',
        'Test::Most'          => '0.25',
        'Test::Perl::Critic'  => '1.02',
        'Test::Pod'           => '1.45',
        'Test::Pod::Coverage' => '1.08',
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'HTML-FormHandler-Field-Date-Infinite-*' },
);
