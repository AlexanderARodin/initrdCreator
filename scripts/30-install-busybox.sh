#!/bin/env bash

set -e

source .config

sudo cp -v $BUSYBOX $NEWROOT/bin/busybox
sudo chroot $NEWROOT /bin/busybox --install -s
