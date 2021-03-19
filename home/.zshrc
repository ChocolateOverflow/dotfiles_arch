#!/bin/zsh

COMPLETION_DIR="$HOME/git/dotfiles/shells/zsh/completions"
PLUGIN_DIR="$HOME/git/dotfiles/shells/zsh/plugins"

source ~/git/dotfiles/shells/src

setopt extendedglob
setopt nocaseglob
setopt rcexpandparam
setopt nocheckjobs
setopt numericglobsort
setopt nobeep
setopt appendhistory
setopt histignorealldups
setopt NO_autoparamslash

unalias run-help
autoload -Uz run-help
alias help=run-help

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
for i in $(ls $PLUGIN_DIR); do
  source $PLUGIN_DIR/$i
done

# Completion
fpath=($fpath /usr/share/zsh/functions/Completion/* $HOME/git/dotfiles/shells/zsh/completions)
zstyle ':completion:*' extra-verbose yes
#zstyle ':completion:list-expand:*' extra-verbose yes
zstyle ':completion:*:complete:*:' tag-order '! ancestor-directories recent-directories recent-files' -
zstyle ':completion:*:complete:*:' group-order files executables local-directories options builtins history-words
zstyle ':autocomplete:*' min-input 1
zstyle ':autocomplete:*' ignored-input 'yta##'
zstyle ':autocomplete:tab:*' insert-unambiguous yes
zstyle ':autocomplete:tab:*' widget-style menu-select

source ~/tools/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Key bindings
typeset -g -A key
key[Home]=$terminfo[khome]
key[End]=$terminfo[kend]
key[Insert]=$terminfo[kich1]
key[Backspace]=$terminfo[kbs]
key[Delete]=$terminfo[kdch1]
key[Up]=$terminfo[kcuu1]
key[Down]=$terminfo[kcud1]
key[Left]=$terminfo[kcub1]
key[Right]=$terminfo[kcuf1]
key[PageUp]=$terminfo[kpp]
key[PageDown]=$terminfo[knp]

bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey -M menuselect '^[' .vi-cmd-mode
bindkey $key[Home] beginning-of-line
bindkey $key[End] end-of-line
bindkey $key[Insert] overwrite-mode
bindkey $key[Backspace] backward-delete-char
bindkey $key[Delete] delete-char
bindkey $key[Left] backward-char
bindkey $key[Right] forward-char
bindkey $key[Up] up-line-or-search
bindkey $key[Down] down-line-or-select
#bindkey $key[ControlSpace] list-expand

eval "$(~/.cargo/bin/starship init zsh)"
