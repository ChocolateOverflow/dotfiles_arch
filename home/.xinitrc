#!/bin/sh

export LIBVA_DRIVER_NAME=vdpau

# PATH
export PATH="$PATH:$(du "$HOME/git/dotfiles/scripts" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="$PATH:$HOME/.npm/bin:/usr/bin/vendor_perl/:$HOME/.cargo/bin"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/tmp/lib/

# Default applications
export BROWSER="firefox"
export EDITOR="nvim"
export FILE_CLI="vifm"
export FILE_GUI="pcmanfm"
export TERMINAL="alacritty"
export SCREENLOCK="i3lock -c 000000"

# bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Disable "screen off after some time idel"
xset -dpms
xset s off

# bash history
export HISTFILESIZE=5000

# Increase batch limit
ulimit -n 40000

# Applications to run
clipmenud &
dunst &
unclutter --ignore-scrolling --jitter 5 &
nm-applet &
flameshot &

# Swap CAPS and ESC keys
setxkbmap -option caps:swapescape

# Start window manager
bspwm -c $HOME/.config/bspwm/bspwmrc
