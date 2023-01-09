#!/bin/sh

echo "deployment.."

chmod -v +x /tester.sh

chmod -v +x /etc/sv/**/run

chmod -v +x /listener.sh

vi /etc/sv/tester/run
