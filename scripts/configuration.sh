#!/bin/env bash

set -e

source .config

sudo cp -v ./newroot/* $NEWROOT
sudo chmod +x $NEWROOT/init
