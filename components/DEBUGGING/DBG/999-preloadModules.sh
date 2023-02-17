#!/bin/sh

LIST="\
 virtio_blk\
 virtio_net"


for aModule in $LIST; do
	echo -n "$aModule.."
	if modprobe $aModule ; then
		echo "OK"
	else
		echo "ERR!!"
	fi
done
