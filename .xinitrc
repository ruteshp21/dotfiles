#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

$HOME/.screenlayout/display.sh
xrdb ~/.Xresources
xsetroot -cursor_name left_ptr
picom -b --experimental-backends &
nitrogen --restore &
caffeine &
sxhkd &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
dunst &
exec bspwm
