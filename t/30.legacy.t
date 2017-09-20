#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;
use Test::More;
use FindBin '$Bin';
use Data::Dumper;
use YAML::PP;

my $file = "$Bin/data/simple.yaml";
my $yaml = do { open my $fh, '<', $file or die $!; local $/; <$fh> };

my $data = { a => 1 };

my $data_from_string = YAML::PP::Load($yaml);
my $data_from_file = YAML::PP::LoadFile($file);
is_deeply($data_from_string, $data, "Load data ok");
is_deeply($data_from_file, $data, "LoadFile data ok");


done_testing;
