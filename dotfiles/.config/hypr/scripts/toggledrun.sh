#!/bin/sh

# -x ensures we match the exact process name "tofi-drun"
if pgrep -x "tofi-drun" > /dev/null; then
    killall -q tofi-drun
else
    tofi-drun &
fi
