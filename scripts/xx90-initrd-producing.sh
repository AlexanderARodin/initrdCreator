#!/bin/env bash
set -e

source .config

echo "pack initrd: $INITRD"
cd $NEWROOT
sudo rm -vf $INITRD
sudo find . | sudo cpio -o -H newc | sudo gzip > $INITRD
sudo cp -v $INITRD $INSTALL_DIR
