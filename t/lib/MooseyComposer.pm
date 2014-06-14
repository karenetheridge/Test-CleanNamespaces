use strict;
use warnings;
package MooseyComposer;

use Moose;
extends 'MooseyClean';
with 'MooseyRole';
use Scalar::Util 'weaken';
use namespace::clean;

sub child_stuff {}

use constant CAN => [ qw(stuff role_stuff child_stuff meta) ];
use constant CANT => [ qw(refaddr reftype weaken with) ];

1;
