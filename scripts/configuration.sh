#!/bin/env bash

set -e

source .config

sudo cp -rv ./newroot/* "$NEWROOT"

if [ -f "$NEWROOT/init" ]; then
	sudo chmod +x "$NEWROOT/init"
fi

#sudo cp -v "$TMUX" "$NEWROOT/bin"
#sudo chmod +x "$NEWROOT/bin/tmux"
