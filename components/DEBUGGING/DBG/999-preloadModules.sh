#!/bin/sh

LIST="\
 virtio_blk\
 virtio_net"


for aModule in $LIST; do
	if modprobe $aModule ; then
		echo "$aModule..OK"
	else
		echo "$aModule..ERR!!"
	fi
done
