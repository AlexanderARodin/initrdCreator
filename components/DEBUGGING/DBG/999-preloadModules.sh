#!/bin/sh

LIST="\
 virtio_net\
 virtio_blk\
 sg sd_mod\
 virtio_scsi\
 "


for aModule in $LIST; do
	echo "$aModule.."
	if modprobe $aModule ; then
		echo "$aModule.. ..OK"
	else
		echo "$aModule.. ..ERROR!!"
	fi
done
