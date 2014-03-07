use strict;
use warnings;
package MooseyParameterizedRole;

use MooseX::Role::Parameterized;
use Scalar::Util 'reftype';
use namespace::clean;

parameter foo => ( is => 'ro', isa => 'Str' );

role {
    1;
};

sub role_stuff {}

1;
