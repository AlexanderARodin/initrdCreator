#!/bin/sh

mount -t vboxsf exch /mnt/guest-exch

echo "lshw -html > /mnt/guest-exch/lshw.html" > /.ash_history
