# ~/.bashrc

[[ $- != *i* ]] && return

COMPLETION_DIR="$HOME/git/dotfiles/shells/bash/completions"

source ~/git/dotfiles/shells/src

# Disables Ctrl-S which freezes the terminal
bind -r '\C-s'
stty -ixon

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

# Custom prompt
PS1="\[\033[32m\][\w] \[\033[31m\]\$\[\033[00m\] "

# Vim mode
set -o vi

# autojump
source ~/git/dotfiles/shells/bash/autojump.bash

# Completion
for i in $(ls $COMPLETION_DIR); do
  . $COMPLETION_DIR/$i
done
__git_complete g __git_main

# starship prompt
eval "$(starship init bash)"

source "$HOME/.cargo/env"
