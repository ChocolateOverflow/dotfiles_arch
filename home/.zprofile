#!/bin/zsh

export HISTFILE=~/.cache/zsh/history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILESIZE=10000

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

# Increase batch limit
ulimit -n 40000

# startx if tty1
[ "$(tty)" = "/dev/tty1" ] && ! pidof -s Xorg >/dev/null 2>&1 && exec startx
