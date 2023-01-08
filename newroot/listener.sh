#!/bin/env bash

echo "PID: $$"

trap 'echo -e "\n--> sig-1 ";' SIGUSR1
trap 'echo -e "\n--> sig-2 ";' SIGUSR2

while true; do
	echo -n "."
	sleep 1
done
