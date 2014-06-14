use strict;
use warnings;
package MouseyRole;

use Mouse::Role;
use Scalar::Util 'reftype';
use namespace::clean;

sub role_stuff {}

use constant CAN => [ qw(role_stuff) ];
use constant CANT => [ qw(reftype) ];

1;
