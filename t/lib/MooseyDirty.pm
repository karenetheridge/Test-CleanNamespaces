use strict;
use warnings;
package MooseyDirty;

use Moose;
use File::Spec::Functions 'catdir';

sub stuff {}

our $CAN;
use constant CAN => [ qw(catdir stuff has with meta) ];
use constant CANT => [ ];
use constant DIRTY => [ qw(catdir has with) ];

1;
