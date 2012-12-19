#!/usr/bin/env perl
# APEX-tool (C) 2012 - dirtyharry123

use strict;
use Getopt::Std;
use Fcntl qw(SEEK_END SEEK_SET SEEK_CUR);
use String::CRC32;

my $file = 0;
my $apex_sd_offset = 0xE53C;
my $apex_sd_length = 230;
my $apex_flash_offset = 0xEB88;
my $apex_flash_length = 30;

sub usage{
    print "Usage: $0 [<options>] <filename>\n";
    print "\n";
    print "       options:\n";
    print "       -s                Use apex_sd offsets\n";
    print "       -f                Use apex_flash offsets\n";
    print "       -r                Replace apex commands\n";
    print "       -h                Print this help\n";
}

my %opt;
getopts("sfhr:", \%opt);
if($opt{h} || !$ARGV[0]){
    usage();
    exit(1);
}
$file = $ARGV[0];

my $buffer;
my $offset;
my $length;

if($opt{s}){
   $offset = $apex_sd_offset; 
   $length = $apex_sd_length; 
}

if($opt{f}){
   $offset = $apex_flash_offset; 
   $length = $apex_flash_length; 
}

open FILE, "+<", $file or die $!;
seek(FILE, $offset, SEEK_SET);
read(FILE, $buffer, $length);
$buffer =~ s/\s*$//;
print "Apex commands: $buffer\n";
if($opt{r}){
    my $commands=$opt{r};
    $commands =~ s/\s*$//;
    if(length($commands) > $length){
        print "Commands to long, only $length bytes allowed\n";
    }else{
        print "New commands:  $commands\n"; 
        my $padding = " " x ($length - length($commands));
        $commands .= $padding;
        seek(FILE, $offset, SEEK_SET);
        print FILE $commands;
        print "Commands replaced\n";
    }
}
close(FILE);
