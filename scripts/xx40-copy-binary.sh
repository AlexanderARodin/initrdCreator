#!/bin/env bash
set -e

source .config

echo "--> BINARIES.."

if [ -d "$BINARY_BBDyn" ]; then
	echo "--> recopy BusyBox.."
	sudo cp -rv "$BINARY_BBDyn/"* "$NEWROOT/"
fi

if [ -d "$BINARY_OTHERS" ]; then
	echo "--> OTHERS bins.."
	sudo cp -rv "$BINARY_OTHERS/"* "$NEWROOT/"
fi
