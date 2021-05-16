#!/bin/bash

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Disable "screen off after some time idle"
xset -dpms
xset s off

# Applications to run
clipmenud &
dunst &
unclutter --ignore-scrolling --jitter 5 &
nm-applet &
blueman-applet &
flameshot &
transmission-daemon -er &

# Start window manager
bspwm -c $HOME/.config/bspwm/bspwmrc
