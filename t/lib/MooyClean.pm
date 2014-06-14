use strict;
use warnings;
package MooyClean;

use Moo;
use Scalar::Util 'refaddr';
use namespace::clean;

sub stuff {}

use constant CAN => [ qw(stuff) ];
use constant CANT => [ qw(refaddr weaken reftype) ];

1;
