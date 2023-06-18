use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use Pod::Usage;
use FindBin qw($Bin);
use lib "$Bin/../lib";
use Gnu::Gdp;
use Gnu::Gdp::Feature;
use Gnu::Gdp::Match;
use Gnu::Gdp::Match::Feature;

my $help;
GetOptions(
    'help/?' => \$help,

) or pod2usage(2);
pod2usage(1) if defined $help;
pod2usage(2) if @ARGV < 1;

my $gdp = Gnu::Gdp->new();
my $match = Gnu::Gdp::Match->new();
my $feature = Gnu::Gdp::Feature->new();
my $match_feature = Gnu::Gdp::Match::Feature->new();
my $feature_feature = Gnu::Gdp::Feature::Feature->new();

$gdp->load($ARGV[0]);
$match->load($ARGV[1]);
$feature->load($ARGV[2]);
$match_feature->load($ARGV[3]);
$feature_feature->load($ARGV[4]);

$match_feature->match($match, $feature);

1;

__END__
