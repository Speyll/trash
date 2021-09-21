#!/bin/sh
pkill -x lemonbar
while pgrep -u $UID -x lemonbar >/dev/null; do sleep 1; done

# Colors
background="#0c0c0c"
color1="#f2f2f2"

$HOME/.config/lemonbar/bar.sh | lemonbar -f "monospace:Regular:size=12" -F $color1 -B $background -g x24 -n "lemon" &