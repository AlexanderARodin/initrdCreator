#!/bin/sh

LIST="\
 virtio_net\
 virtio_blk\
 virtio_scsi\
 sg sd_mod 'sleep 5' sr_mod\
 "


for aModule in $LIST; do
	echo "$aModule.."
	if modprobe $aModule ; then
		echo "$aModule.. ..OK"
	else
		echo "$aModule.. ..ERROR!!"
	fi
done
