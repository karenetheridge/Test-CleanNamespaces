use strict;
use warnings;
package MooseyDirty;

use Moose;
use Scalar::Util 'refaddr';

sub stuff {}

use constant CAN => [ qw(refaddr) ];
use constant CANT => [ ];

1;
