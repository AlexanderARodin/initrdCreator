#!/bin/env bash

source .config

echo "sh in new root: $NEWROOT"
sudo chroot $NEWROOT /bin/sh
