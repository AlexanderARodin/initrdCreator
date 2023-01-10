#!/bin/env bash

source .config
source ./scripts/.lib

# unmount & remove pseudo-system
BindSystemVFS

echo "run pseudoINIT into new root: $NEWROOT"
echo "whith param: $1"
sudo chroot $NEWROOT $1

# unmount & remove pseudo-system
RemoveSystemVFS

