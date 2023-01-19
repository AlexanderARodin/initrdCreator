#!/bin/env bash
set -e

source .config


echo "--> BINARIES.."
[ -d "$BINARY_BBDyn" ] && sudo cp -rv "$BINARY_BBDyn/"* "$NEWROOT/"

[ -d "$BINARY_OTHERS" ] && sudo cp -rv "$BINARY_OTHERS/"* "$NEWROOT/"

