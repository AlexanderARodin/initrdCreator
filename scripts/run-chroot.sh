#!/bin/env bash

source .config

echo "new root: $NEWROOT"
sudo chroot $NEWROOT /bin/sh
