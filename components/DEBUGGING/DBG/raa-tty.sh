#!/bin/sh

TTY="tty$1"
DISP="<> /dev/$TTY >&0 2>&1"
MSG="It's $TTY"

exec 2>&1

setsid /bin/sh -c "clear $DISP"
setsid /bin/sh -c "echo $MSG $DISP"
setsid /bin/sh -c "exec login $DISP"
setsid /bin/sh -c "clear $DISP"
