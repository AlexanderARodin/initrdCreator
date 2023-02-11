#!/bin/sh

# QEMU-style shared folder
mount -t 9p guest-exch /mnt/guest-exch -o msize=10485760


# VB-style shared folder
#mount -t vboxsf exch /mnt/guest-exch
