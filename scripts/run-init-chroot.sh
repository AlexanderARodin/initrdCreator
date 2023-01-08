#!/bin/env bash

source .config

echo "run init into new root: $NEWROOT"
sudo chroot $NEWROOT /init

# unmount pseudo-system
sudo umount $NEWROOT/dev/pts
sudo umount $NEWROOT/dev
sudo umount $NEWROOT/proc
sudo umount $NEWROOT/sys
