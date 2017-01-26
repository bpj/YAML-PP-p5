# ABSTRACT: YAML Parser
use strict;
use warnings;
package YAML::PP;

use YAML::PP::Parser;

sub Load {
    my ($yaml) = @_;
    my $parser = YAML::PP::Parser->new(
        cb => \&event,
    );
    $parser->parse($yaml);
}

1;
