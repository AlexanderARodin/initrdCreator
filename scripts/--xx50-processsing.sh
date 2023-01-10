#!/bin/env bash

set -e

source .config


case $TYPE in
	MINIMAL)
		exit 0
		;;
	*)
		echo "unknown type: $TYPE"
		return 1
		;;
esac



sudo cp -rv ./newroot/* "$NEWROOT"

if [ -f "$NEWROOT/init" ]; then
	sudo chmod -v +x "$NEWROOT/init"
fi

#run-parts -v ---

if [ -f "$NEWROOT/deployment.sh" ]; then
	sudo chmod -v +x "$NEWROOT/deployment.sh"
fi

