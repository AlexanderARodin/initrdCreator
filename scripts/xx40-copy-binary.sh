#!/bin/env bash
set -e

source .config


echo "--> BINARIES.."
sudo cp -rv "$BINARY_DIR/"* "$NEWROOT/"


