#!/bin/bash

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# Disable "screen off after some time idle"
xset -dpms
xset s off

# Applications to run
pgrep clipmenud || clipmenud &
pgrep dunst || dunst &
pgrep unclutter || unclutter --ignore-scrolling --jitter 5 &
pgrep nm-applet || nm-applet &
pgrep blueman-applet || blueman-applet &
pgrep flameshot || flameshot &
pgrep numlockx || numlockx &
pgrep transmission-daemon || transmission-daemon -er &

# Start window manager
bspwm -c $HOME/.config/bspwm/bspwmrc
