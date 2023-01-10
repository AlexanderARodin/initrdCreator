#!/bin/env bash

source .config
source ./scripts/.lib

unmountAll

sudo rm -Rfv $NEWROOT
