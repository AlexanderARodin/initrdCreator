#!/bin/sh

echo "started.. ))))"
kill -s SIGUSR1 $1


while true; do
	kill -s SIGUSR2 $1
	sleep 1
done

