#!/usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;
use JSON;

my $ip = '';
if(@ARGV == 0 || !defined $ARGV[0] || $ARGV[0] eq '') {
  my $url = 'http://ipconfig.me/ip';
  my $ua = LWP::UserAgent->new;
  my $response = $ua->get($url);
  if($response->is_success) {
    $ip = $response->decoded_content;
  }
  else {
    die 'Cannot Detect Global IP : ' . $response->status_line . "\n";
  }
}
else {
  $ip = $ARGV[0];
}

my $url = "https://api.ipapi.is/?q=$ip";
my $ua = LWP::UserAgent->new;
my $response = $ua->get($url);
if($response->is_success) {
  my $json_response = $response->decoded_content;
  print $json_response . "\n";
}
else {
  die 'Failed To HTTP Request : ' . $response->status_line . "\n";
}
