#!/bin/sh

mount -t vboxsf $1 /mnt/guest-exch

echo "lshw -html > /mnt/guest-exch/lshw.html" > /.ash_history
