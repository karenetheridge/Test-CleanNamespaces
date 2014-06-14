use strict;
use warnings FATAL => 'all';

use Test::Tester;
use Test::More;

# blech! but Test::Requires does a stringy eval, so this works...
use Test::Requires { 'Moose' => '()', 'MooseX::Role::Parameterized' => '()' };
use Test::CleanNamespaces;

use lib 't/lib';

foreach my $package (qw(MooseyParameterizedRole MooseyParameterizedComposer))
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
