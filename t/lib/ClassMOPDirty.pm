use strict;
use warnings;
package ClassMOPDirty;

use metaclass;
use Scalar::Util 'refaddr';

sub stuff {}

use constant CAN => [ qw(stuff refaddr) ];
use constant CANT => [ ];

1;
