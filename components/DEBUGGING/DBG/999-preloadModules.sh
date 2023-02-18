#!/bin/sh

LIST="\
 virtio_net\
 virtio_blk\
 virtio_scsi\
 sd_mod sr_mod\
 isofs\
 "


for aModule in $LIST; do
	echo "$aModule.."
	if modprobe $aModule ; then
		echo "$aModule.. ..OK"
	else
		echo "$aModule.. ..ERROR!!"
	fi
done
