#!/bin/env bash

source .config

echo "run init into new root: $NEWROOT"
echo "whith param: $1"
sudo chroot $NEWROOT /init $1

# unmount pseudo-system
sudo umount $NEWROOT/dev/pts
sudo umount $NEWROOT/dev
sudo umount $NEWROOT/proc
sudo umount $NEWROOT/sys

sudo rm -Rvf $NEWROOT/dev
sudo rm -Rvf $NEWROOT/proc
sudo rm -Rvf $NEWROOT/sys
