use strict;
use warnings;
package SubDirty;

use SubExporterModule qw/stuff/;

sub method { }

sub callstuff { stuff(); 'called stuff' }

our $CAN;
use constant CAN => [ qw(stuff method callstuff) ];
use constant CANT => [ ];
use constant DIRTY => [ qw(stuff) ];

1;
