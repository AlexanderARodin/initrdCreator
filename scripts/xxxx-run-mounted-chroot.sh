#!/bin/env bash

source .config
source ./scripts/.lib

# unmount & remove pseudo-system
BindSystemVFS

echo "mounted run into new root: $NEWROOT"
sudo chroot $NEWROOT /bin/sh

# unmount & remove pseudo-system
RemoveSystemVFS

