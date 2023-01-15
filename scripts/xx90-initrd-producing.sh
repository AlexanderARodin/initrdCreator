#!/bin/env bash

set -e

source .config

#sudo mv -v "$NEWROOT/init" "$NEWROOT/entry"

echo "pack initrd: $INITRD"
cd $NEWROOT
sudo rm -vf $INITRD
find . | cpio -o -H newc | gzip > $INITRD
sudo cp -v $INITRD $INSTALL_DIR
