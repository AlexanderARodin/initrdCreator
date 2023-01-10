#!/bin/env bash
set -x

set -e

source .config

for COMPONENT in $COMPONENTS; do
	echo "--> component: $COMPONENT"
done


