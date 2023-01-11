#!/bin/sh
set -x

TTY=$1
DISP="<> /dev/tty$TTY >&0 2>&1"

exec 2>&1
echo "getty-$TTY!!.."

setsid /bin/sh -c "clear $DISP"
setsid /bin/sh -c "echo \"$MSG\" $DISP"
setsid /bin/sh -c "exec login $DISP"

echo "..out of GETTY-$TTY!!!!!!!!!!!!!11111111"
