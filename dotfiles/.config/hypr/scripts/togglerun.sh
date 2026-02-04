#!/bin/sh

if pgrep -x tofi; then
	killall tofi-run
else
	tofi-run
fi
