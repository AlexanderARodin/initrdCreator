#!/bin/env bash

source .config


if [ $# ]; then
	echo "start default: /bin/sh"
else
	echo "start: $1"
fi

#echo "sh in new root: $NEWROOT"
#sudo chroot $NEWROOT /bin/sh
