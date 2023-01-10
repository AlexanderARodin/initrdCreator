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

sudo mkdir -v $NEWROOT/usr/lib
sudo ln -sv ./usr/lib $NEWROOT/lib

# config subdirs
sudo mkdir -v $NEWROOT/etc

# home dir
sudo mkdir -v $NEWROOT/home

# var subdirs
sudo mkdir -v $NEWROOT/var
sudo mkdir -v $NEWROOT/var/service
