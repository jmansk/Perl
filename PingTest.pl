#!/usr/bin/perl
use Net::Ping;

my $host = "example.com";
my $p = Net::Ping->new("icmp");

if ($p->ping($host)) {
    print "$host is alive.\n";
} else {
    print "$host is unreachable.\n";
}

$p->close();
