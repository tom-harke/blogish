#!/usr/bin/perl
use strict;
use warnings;

my $emit = 0;
while (<>) {
    chomp;
    if (m/^```haskell$/) {
        $emit = 1;
        print "\n";
        next;
    } elsif (m/^```$/) {
        $emit = 0;
    } elsif ($emit) {
        print;
    } elsif (!$emit) {
        print "-- ";
        print;
    }
    print "\n";
}
