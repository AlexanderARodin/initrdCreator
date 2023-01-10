#!/bin/env bash

source .config
source ./scripts/.lib

echo "run init into new root: $NEWROOT"
echo "whith param: $1"
sudo chroot $NEWROOT /init $1

# unmount & remove pseudo-system
RemoveSystemVFS

