#!/bin/env bash

source .config



echo "run pseudo-init in new root: $NEWROOT"

sudo cp -v ./scripts/supporting/pseudo-init $NEWROOT

sudo chmod +x $NEWROOT/pseudo-init
sudo chroot $NEWROOT /pseudo-init

sudo rm -vf $NEWROOT/pseudo-init

#sudo chroot $NEWROOT /bin/sh
