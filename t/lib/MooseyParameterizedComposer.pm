use strict;
use warnings;
package MooseyParameterizedComposer;

use Moose;
extends 'MooseyClean';
with 'MooseyParameterizedRole' => { foo => 1 };
use Scalar::Util 'weaken';
use namespace::clean;

sub child_stuff {}

use constant CAN => [ qw(stuff role_stuff) ];
use constant CANT => [ qw(refaddr weaken reftype) ];

1;
