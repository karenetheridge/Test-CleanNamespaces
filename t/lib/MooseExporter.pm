use strict;
use warnings;
package MooseExporter;

use Moose::Exporter;
use Moose::Role ();

Moose::Exporter->setup_import_methods(also => 'Moose::Role');

use constant CAN => [ ];
use constant CANT => [ ];

1;
