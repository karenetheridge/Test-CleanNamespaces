use strict;
use warnings;
package MooyComposer;

use Moo;
extends 'MooyClean';
with 'MooyRole';
use Scalar::Util 'weaken';
use namespace::clean;

sub child_stuff {}

use constant CAN => [ qw(stuff role_stuff) ];
use constant CANT => [ qw(refaddr reftype weaken) ];

1;
