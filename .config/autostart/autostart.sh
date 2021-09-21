#!/bin/sh

# Kill bars
pkill polybar | pkill lemonbar

# Set Wallpaper
hsetroot -solid "#f2f2f2" &

# Launch things
$HOME/.config/picom/launch.sh &
#$HOME/.config/sxhkd/launch.sh &
#$HOME/.config/polybar/launch.sh &
#$HOME/.config/lemonbar/launch.sh &

# Cursor
xsetroot -cursor_name left_ptr &