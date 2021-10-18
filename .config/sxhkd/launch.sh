#!/bin/sh
pkill -x sxhkd
pkill sxhkd
while pgrep -u $UID -x sxhkd >/dev/null; do sleep 1; done
sxhkd -c $HOME/.config/sxhkd/sxhkdrc -m 1 &