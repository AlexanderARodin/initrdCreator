#!/bin/env bash

source .config

echo "run init into new root: $NEWROOT"
sudo chroot $NEWROOT /init
