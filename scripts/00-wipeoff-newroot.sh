#!/bin/env bash

source .config
source ./scripts/.lib

unmountSystemVFS

sudo rm -Rfv $NEWROOT
