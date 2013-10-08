#!/usr/bin/perl

use strict;
use warnings;
use Test::Most;
use Test::FailWarnings;
use DateTime;

use_ok( "HTML::FormHandler::Field::Date::Infinite" );

my $field = new_ok( "HTML::FormHandler::Field::Date::Infinite",
                    [ name => "datetest"] );

lives_ok sub { $field->build_result },
    "build_result succeeds";

lives_ok sub { $field->_set_input( "2013-01-01" ) }, "input can be set";

ok( $field->validate_field, "default date format passes" );
isa_ok( $field->value, "DateTime", "value is a DateTime" );
is( $field->fif, $field->value->strftime('%Y-%m-%d'), "fif ok" );



## with -?inf input


## future

my $dt_fut_ref = DateTime::Infinite::Future->new;

my $field2 = new_ok( "HTML::FormHandler::Field::Date::Infinite",
                    [ name => "datetest"] );

lives_ok sub { $field2->build_result },
    "build_result succeeds";

lives_ok sub { $field2->_set_input( "inf" ) }, "input can be set";
lives_ok sub { $field2->validate_field }, "field2 can run validated";
ok( $field2->validated, "field2 is valid" );
is( $field2->value, "".$dt_fut_ref, "future datetime deflation" );


$field2->_set_input( "Infinite" );
lives_ok sub { $field2->validate_field },
    "field2 can run validated on infinite input";
ok( $field2->validated, "field2 is also now valid" );
is( $field2->value, "".$dt_fut_ref, "future datetime deflation again" );

## past

my $dt_past_ref = DateTime::Infinite::Past->new;

my $field3 = new_ok( "HTML::FormHandler::Field::Date::Infinite",
                    [ name => "datetest"] );

lives_ok sub { $field3->build_result },
    "build_result succeeds";

lives_ok sub { $field3->_set_input( "-inf" ) }, "input can be set";
lives_ok sub { $field3->validate_field }, "field3 can run validated";
ok( $field3->validated, "field3 is valid" );
is( $field3->value, "".$dt_past_ref, "past datetime deflation" );





done_testing;
