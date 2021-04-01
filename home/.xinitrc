#!/bin/sh

export LIBVA_DRIVER_NAME=vdpau

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

# Swap CAPS and ESC keys
setxkbmap -option caps:swapescape

# Start window manager
bspwm -c $HOME/.config/bspwm/bspwmrc
