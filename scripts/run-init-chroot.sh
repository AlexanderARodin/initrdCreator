#!/bin/env bash

source .config

echo "run init into new root: $NEWROOT"
sudo chroot $NEWROOT /init

# unmount pseudo-system
sudo umount $NEWROOT/sys
sudo umount $NEWROOT/proc
sudo umount $NEWROOT/dev

