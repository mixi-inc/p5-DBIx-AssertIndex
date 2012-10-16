use strict;
use warnings;
use Test::Requires qw(DBD::mysql Test::mysqld);
use Test::More;
use t::Util;

use DBI;
use DBIx::AssertIndex;

my($mysqld, $dbh) = t::Util::setup_mysqld;

my $res = t::Util::capture {
    $dbh->do('SELECT * FROM user');
};
like($res, qr/explain alert/);

done_testing;
