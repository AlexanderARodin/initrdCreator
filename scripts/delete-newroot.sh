#!/bin/env bash

source .config

sudo umount $NEWROOT/sys
sudo umount $NEWROOT/proc
sudo umount $NEWROOT/dev

sudo rm -Rfv $NEWROOT
