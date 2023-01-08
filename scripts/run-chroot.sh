#!/bin/env bash

source .config



echo "run pseudo-init in new root: $NEWROOT"

sudo chroot $NEWROOT /bin/sh
