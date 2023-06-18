use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use Pod::Usage;
use FindBin qw($Bin);
use lib "$Bin/../lib";

use GDBM_File;
use Graph::Directed;
use Graph::Matrix;
use Graph;


my $help = $$;


1;

__END__
