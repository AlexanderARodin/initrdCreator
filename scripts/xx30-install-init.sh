#!/bin/env bash

set -e

source .config

case $INIT in
	MIN)
		sudo cp -rv ./inits-type/min-init "$NEWROOT/init"
		;;
	*)
		echo "unknown INIT-TYPE: $INIT" >&2
		exit 1
		;;
esac

sudo chmod -v +x "$NEWROOT/init"
