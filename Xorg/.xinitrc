#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

pulseaudio --start
feh --bg-scale /home/patou/Dropbox/wallpapers/space/bg.jpg
#wicd-client commented because already started in i3 config
wicd-client -t &
exec dbus-launch i3
# set mouse accel to 0
xset m 0 0
