#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?* ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Xresources
if [ -f $HOME/.Xresources ]; then
    xrdb -merge $HOME/.Xresources
fi

# Load files
"${HOME}"/.config/autostart/autostart.sh &

# wm settings
exec cwm
