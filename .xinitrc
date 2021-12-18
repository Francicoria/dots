#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

#Autostart
xbacklight -set 25 &
setxkbmap it &
nitrogen --restore &
picom &
