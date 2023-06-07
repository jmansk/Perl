#!/usr/bin/perl
use Net::SMTP;

my $smtp = Net::SMTP->new('smtp.example.com');

$smtp->mail('from@example.com');
$smtp->to('to@example.com');

$smtp->data();
$smtp->datasend("Subject: Test Email\n");
$smtp->datasend("\n");
$smtp->datasend("This is a test email.\n");
$smtp->dataend();

$smtp->quit;
