#!/bin/env bash
set -x

set -e

source .config

for COMPONENT in $COMPONETS; do
	echo "--> component: $COMPONENT"
done


