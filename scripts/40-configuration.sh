#!/bin/env bash

set -e

source .config

sudo cp -rv ./newroot/* "$NEWROOT"

if [ -f "$NEWROOT/init" ]; then
	sudo chmod -v +x "$NEWROOT/init"
fi

#run-parts -v ---

if [ -f "$NEWROOT/deployment.sh" ]; then
	sudo chmod -v +x "$NEWROOT/deployment.sh"
fi

