#!/bin/env bash


trap echo -e "\n--> sig-1\n"; SIGUSR1
trap echo -e "\n--> sig-2\n"; SIGUSR2

while true; do
	echo -n "."
	sleep 1
done
