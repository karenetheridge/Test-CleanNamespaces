use strict;
use warnings;
package MouseyDirty;

use Mouse;
use Scalar::Util 'refaddr';

sub stuff {}

use constant CAN => [ qw(refaddr stuff has with meta) ];
use constant CANT => [ ];
use constant DIRTY => [ qw(refaddr has with) ];

1;
