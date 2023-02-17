#!/bin/sh

LIST='virtio_net'


for aModule in $LIST; do
  echo -n "$aModule.."
  echo "OK"
done
