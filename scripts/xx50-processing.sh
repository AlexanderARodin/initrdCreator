#!/bin/env bash
set -e

source .config

for COMPONENT in $COMPONENTS; do
	echo "--> component: $COMPONENT"
	sudo cp -rv ./components/$COMPONENT/* "$NEWROOT"
done

if [ -d "$NEWROOT/SCRIPTS/" ]; then
	sudo chmod -Rv +x "$NEWROOT/SCRIPTS/"
	sudo chroot "$NEWROOT"  run-parts --exit-on-error /SCRIPTS
fi
sudo rm -Rvf "$NEWROOT/SCRIPTS" || true
