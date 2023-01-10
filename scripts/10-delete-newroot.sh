#!/bin/env bash

source .config

sudo umount $NEWROOT/dev/pts
sudo umount $NEWROOT/dev
sudo umount $NEWROOT/proc
sudo umount $NEWROOT/sys

sudo rm -Rfv $NEWROOT
