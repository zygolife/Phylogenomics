#!env perl
use strict;
use warnings;
my $cutoff = 1e-20;
my %seen;
while(<>) {
    next if /^\#/;
    my @row = split(/\s+/,$_);
    my $t = $row[0];
    my $q = $row[3];
    my $evalue = $row[6];
    next if $evalue > $cutoff;
    if( exists $seen{$q} ) {
	next;
    }
    $seen{$q} = $t;
}
for my $s ( keys %seen ) {
    print join("\t",$s,$seen{$s}),"\n";
}
