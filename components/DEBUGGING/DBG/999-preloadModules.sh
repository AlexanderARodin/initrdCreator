#!/bin/sh

LIST="\
 virtio_blk\
 virtio_net"


for aModule in $LIST; do
	echo "$aModule.."
	if modprobe $aModule ; then
		echo "$aModule.. ..OK"
	else
		echo "$aModule.. ..ERROR!!"
	fi
done
