#!/bin/env bash

source .config
source ./scripts/.lib

unmountAll

sudo umount $NEWROOT/dev/pts
sudo umount $NEWROOT/dev
sudo umount $NEWROOT/proc
sudo umount $NEWROOT/sys

sudo rm -Rfv $NEWROOT
