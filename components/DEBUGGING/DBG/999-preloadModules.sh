#!/bin/sh

LIST="\
 virtio_net\
 virtio_blk\
 virtio_scsi\
 sg sd_mod sr_mod\
 "


for aModule in $LIST; do
	sleep 0.01
	echo "$aModule.."
	if modprobe $aModule ; then
		echo "$aModule.. ..OK"
	else
		echo "$aModule.. ..ERROR!!"
	fi
done
