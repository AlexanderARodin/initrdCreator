#!/bin/env bash

set -e

source .config

# new root
sudo mkdir -v $NEWROOT


# system dirs
sudo mkdir -v $NEWROOT/dev
sudo mkdir -v $NEWROOT/proc
sudo mkdir -v $NEWROOT/sys


# software subdirs
sudo mkdir -v $NEWROOT/usr
sudo mkdir -v $NEWROOT/usr/bin
sudo ln -sv ./usr/bin $NEWROOT)/bin

sudo mkdir -v $NEWROOT/usr/sbin
sudo ln -sv ./usr/sbin $NEWROOT/sbin

sudo mkdir -v $NEWROOT/usr/lib
sudo ln -sv ./usr/lib $NEWROOT/lib
