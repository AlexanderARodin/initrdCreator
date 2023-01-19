#!/bin/env bash
set -e

source .config

echo "--> BINARIES.."

echo "--> recopy BusyBox.."
[ -d "$BINARY_BBDyn" ] && sudo cp -rv "$BINARY_BBDyn/"* "$NEWROOT/"

echo "--> OTHERS bins.."
[ -d "$BINARY_OTHERS" ] && sudo cp -rv "$BINARY_OTHERS/"* "$NEWROOT/"

