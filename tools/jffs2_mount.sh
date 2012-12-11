#!/bin/sh

MTD_BLOCK=/dev/mtdblock0

usage(){
    echo "Usage: $0 <filename> <mountpoint>"
}

if [ ! "$1" -o ! "$2" ]; then
    usage
    exit 1
else
    FILENAME=$1
    MOUNTPOINT=$2
fi

LOOP_DEVICE=`losetup -f`
losetup $LOOP_DEVICE $FILENAME
modprobe mtdblock
modprobe block2mtd
su -c "echo "$LOOP_DEVICE,128KiB" > /sys/module/block2mtd/parameters/block2mtd"
modprobe jffs2
mount -t jffs2 $MTD_BLOCK $MOUNTPOINT
