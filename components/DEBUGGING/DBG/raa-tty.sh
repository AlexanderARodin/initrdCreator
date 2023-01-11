#!/bin/sh

TTY="tty$1"
DISP="<> /dev/$TTY >&0 2>&1"
MSG_IN="DEBUGGING $TTY - intro"
MSG_OUT="DEBUGGING $TTY - outro"

exec 2>&1

#setsid /bin/sh -c "clear $DISP"
setsid /bin/sh -c "echo $MSG_IN $DISP"
setsid /bin/sh -c "exec login $DISP"
setsid /bin/sh -c "echo $DISP"
setsid /bin/sh -c "echo $MSG_OUT $DISP"
setsid /bin/sh -c "echo $DISP"
#setsid /bin/sh -c "clear $DISP"
