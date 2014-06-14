use strict;
use warnings FATAL => 'all';

use Test::Tester;
use Test::More;

use Test::CleanNamespaces;
use lib 't/lib';

{
    my $package = 'Overloader';

    my (undef, @results) = run_tests(sub { namespaces_clean($package) });
    cmp_results(
        \@results,
        [ {
            ok => 1,
            name => $package . ' contains no imported functions',
        } ],
        $package . ' has a clean namespace',
    );

    my $obj = $package->new(val => 42);

    is("$obj", '42', 'string overload works');
    is($obj + 1, 43, 'numeric overload works');

    ok($package->can($_), "can do $package->$_") foreach @{ $package->CAN };
    ok(!$package->can($_), "cannot do $package->$_") foreach @{ $package->CANT };
}

done_testing;
