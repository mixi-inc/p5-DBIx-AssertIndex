use inc::Module::Install;
name 'DBIx-AssertIndex';
all_from 'lib/DBIx/AssertIndex.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
