#!/bin/env bash

set -e

source .config

for COMPONENT in $COMPONENTS; do
	echo "--> component: $COMPONENT"
	sudo cp -rv ./components/$COMPONENT/* "$NEWROOT"
done

sudo chmod -Rv +x "$NEWROOT/SCRIPTS/"
sudo chroot "$NEWROOT"  run-parts /SCRIPTS
sudo rm -Rvf "$NEWROOT/SCRIPTS" || true
