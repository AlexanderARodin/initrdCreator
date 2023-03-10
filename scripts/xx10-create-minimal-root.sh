#!/bin/env bash

set -e

source .config

# new root
sudo mkdir -v $NEWROOT


# software subdirs
sudo mkdir -v $NEWROOT/usr
sudo mkdir -v $NEWROOT/usr/bin
sudo ln -sv ./usr/bin $NEWROOT/bin

sudo mkdir -v $NEWROOT/usr/sbin
sudo ln -sv ./usr/sbin $NEWROOT/sbin
