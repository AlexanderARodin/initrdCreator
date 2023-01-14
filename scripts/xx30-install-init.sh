#!/bin/env bash

set -e

source .config

case $INIT in
	DBG)
		sudo cp -rv ./inits-type/dbg-init "$NEWROOT/init"
		;;
	MIN)
		sudo cp -rv ./inits-type/min-init "$NEWROOT/init"
		;;
	BUSYBOX)
		sudo cp -rv ./inits-type/busybox-init "$NEWROOT/init"
		;;
	*)
		echo "unknown INIT-TYPE: $INIT" >&2
		exit 1
		;;
esac

sudo chmod -v +x "$NEWROOT/init"
