#!/bin/env bash

set -e

source .config

sudo cp -rv ./newroot/* $NEWROOT
sudo chmod +x $NEWROOT/init
