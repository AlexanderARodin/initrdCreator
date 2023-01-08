#!/bin/env bash

set -e

source .config

sudo cp -rv ./newroot/* "$NEWROOT"

if [ -f "$NEWROOT/init" ]; then
	sudo chmod +x "$NEWROOT/init"
fi
if [ -f "$NEWROOT/deployment.sh" ]; then
	sudo chmod +x "$NEWROOT/deployment.sh"
	sudo chmod +x "$NEWROOT/tester.sh"
fi



#sudo cp -v "$TMUX" "$NEWROOT/bin"
#sudo chmod +x "$NEWROOT/bin/tmux"
