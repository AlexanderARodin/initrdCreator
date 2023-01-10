#!/bin/env bash

source .config

echo "run SH in new root: $NEWROOT"

sudo cp -v ./scripts/chrooters/SCRIPT "$NEWROOT"
sudo chmod -v +x "$NEWROOT/SCRIPT"

	sudo chroot $NEWROOT /SCRIPT $1

sudo rm -fv "$NEWROOT/SCRIPT"
