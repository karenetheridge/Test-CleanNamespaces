use strict;
use warnings FATAL => 'all';

use Test::Tester;
use Test::More;
use Test::Requires { 'Role::Tiny' => '1.003000' };
use Test::CleanNamespaces;

use lib 't/lib';

foreach my $package (qw(Clean Role Composer))
{
    my (undef, @results) = run_tests(sub { namespaces_clean($package) });
    cmp_results(
        \@results,
        [ {
            ok => 1,
            name => $package . ' contains no imported functions',
        } ],
        $package . ' has a clean namespace',
    );
    diag 'got result: ', explain(\@results) if not Test::Builder->new->is_passing;

    ok($package->can($_), "can do $package->$_") foreach @{ $package->CAN };
    ok(!$package->can($_), "cannot do $package->$_") foreach @{ $package->CANT };
}

done_testing;
