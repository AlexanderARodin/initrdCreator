#!/bin/env bash

set -e

source .config

echo "pack initrd: $INITRD"
cd $NEWROOT
find . | cpio -o -H newc | gzip > $INITRD
sudo cp -v $INITRD $INSTALL_DIR
