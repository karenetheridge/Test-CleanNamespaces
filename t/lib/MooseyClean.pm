use strict;
use warnings;
package MooseyClean;

use Moose;
use Scalar::Util 'refaddr';
use namespace::clean;

sub stuff {}

use constant CAN => [ qw(stuff) ];
use constant CANT => [ qw(refaddr) ];

1;
