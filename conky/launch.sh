#!/bin/bash
killall -q conky

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

conky