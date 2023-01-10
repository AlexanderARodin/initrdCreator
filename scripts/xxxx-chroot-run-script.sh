#!/bin/env bash

source .config

echo "run SH in new root: $NEWROOT"
sudo chroot $NEWROOT /SCRIPT $1
