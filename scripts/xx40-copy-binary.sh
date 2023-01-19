#!/bin/env bash
set -e

source .config


echo "--> BINARIES.."
echo "$BINARY_DIR/* --> $NEWROOT/"
sudo cp -rv "$BINARY_DIR/*" "$NEWROOT/"


