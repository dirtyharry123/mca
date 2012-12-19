#!/usr/bin/env perl
# MCA-tool (C) 2012  - dirtyharry123

use strict;
use Getopt::Std;
use Fcntl qw(SEEK_END SEEK_SET SEEK_CUR);
use String::CRC32;

my $offset= 0x07EB4;
my $n = 26;
my $version_offset = 0x04AD9;
my $name_offset = 0x229B0;
my $file = 0;

sub usage{
    print "Usage: $0 [<options>] <filename>\n";
    print "\n";
    print "       options:\n";
    print "       -a                Append CRC32 to file\n";
    print "       -c                Check file-integrity (compare CRC32)\n";
    print "       -e|-r             Replace CRC32\n";
    print "       -s                Show CRC32\n";
    print "       -h                Print this help\n";
    print "\n";
    print "       additional options for mca_cam.upb:\n";
    print "       -x                Extract Info + CAIDs\n";
    print "       -R <list>         Replace CAIDs with \',\'-separated list of CAIDs\n";
    print "       -N <name>         Replace firmware-name\n";
    print "       -v <version>      Replace firmware-version\n";
}

my %opt;
getopts("acershxR:N:v:", \%opt);
if($opt{h} || !$ARGV[0]){
    usage();
    exit(1);
}
$file = $ARGV[0];

my @CAIDS;
my $crc;
my $stored_crc;

my $buffer;
open FILE, "+<", $file or die $!;
if($opt{s} || $opt{a}){
    $crc=crc32(*FILE);
    printf "CRC32 = %08X\n", $crc;
    if($opt{a}){
        seek(FILE, 0, SEEK_END);
        $stored_crc=pack("V", $crc);
        print FILE $stored_crc;
        print "CRC appended\n";
    }
}
else{
    if($opt{x} || $opt{R} || $opt{N} || $opt{v}){
        seek(FILE, $version_offset, SEEK_SET);
        read(FILE, $buffer, 2);
        my $version = unpack("n", $buffer);
        seek(FILE, $name_offset, SEEK_SET);
        read(FILE, $buffer, 4);
        my $name = $buffer;
        seek(FILE, $offset, SEEK_SET);
        for(my $i=0; $i < $n; $i++){
            read(FILE, $buffer, 4);
            push(@CAIDS, sprintf("%04X", unpack("V", $buffer)));
        }
        print "Firmware name:    $name\n";
        print "Firmware version: $version\n";
        print "CAIDS:            " . join(',', @CAIDS) . "\n";
        if($opt{R}){
            @CAIDS = split(",", $opt{R});
            if(scalar(@CAIDS) <= $n){
                printf "Replacing CAIDS: $opt{R}\n";
                seek(FILE, $offset, SEEK_SET);
                foreach my $caid (@CAIDS){
                    print FILE pack("V", hex($caid));
                }
            }
            else{
                printf "Too many CAIDS: " . scalar(@CAIDS) . ", Available slots: $n\n";
            }
        }
        if($opt{N}){
            if(length($opt{N}) <= 3){
                printf "Replacing name: $opt{N}\n";
                seek(FILE, $name_offset, SEEK_SET);
                print FILE $opt{N};
            }
            else{
                printf "Name too long, only 3 Bytes allowed\n";
            }
        }
        if($opt{v}){
            printf "Replacing version: $opt{v}\n";
            seek(FILE, $version_offset, SEEK_SET);
            print FILE pack("n", $opt{v});
        }
    }
    seek(FILE, -4, SEEK_END);
    read(FILE, $buffer, 4);
    $stored_crc=unpack("V", $buffer);
    seek(FILE, 0, SEEK_SET);
    local $/ = undef;
    $buffer = <FILE>;
    $crc=crc32(substr($buffer,0,-4));
    if($opt{e} || $opt{r}){
        printf "Original CRC32 = %08X\n", $stored_crc;
        printf "Calculated CRC32 = %08X\n", $crc;
        if($stored_crc != $crc){
            seek(FILE, -4, SEEK_END);
            $stored_crc=pack("V", $crc);
            print FILE $stored_crc;
            print "CRC replaced\n";
        }
        else{
            print "Nothing to do\n";
        }
    }else{
        if($crc != $stored_crc){
            printf "CRC mismatch (%08X != %08X)\n", $stored_crc, $crc;
        }
        else{
            printf "CRC matched (%08X = %08X)\n", $stored_crc, $crc;
        }
    }
}
close(FILE);
