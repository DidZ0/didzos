#!/bin/bash

#KEYMAP
setxkbmap us colemak &
xset r rate 300 50 &

#JAVA APPS ISSUES
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
wmname LG3D

#APPS

#STATUS_BAR

#START_LOOP
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK

exec dwm
