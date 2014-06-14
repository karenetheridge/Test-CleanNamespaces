use strict;
use warnings;
use Class::MOP::Class;

my $meta = Class::MOP::Class->create('ClassMOPClean');

package ClassMOPClean;
use Scalar::Util 'refaddr';
use namespace::clean;

sub stuff {}

use constant CAN => [ qw(stuff) ];
use constant CANT => [ qw(refaddr weaken reftype) ];

1;
