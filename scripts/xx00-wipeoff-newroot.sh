#!/bin/env bash

source .config
source ./scripts/.lib

RemoveSystemVFS

sudo rm -Rfv $NEWROOT
