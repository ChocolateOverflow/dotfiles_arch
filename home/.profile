# PATHs

PATH="$HOME/.local/bin/:$HOME/.npm/bin:/usr/bin/vendor_perl/:$HOME/.cargo/bin:$HOME/perl5/bin:$PATH"
PATH="$PATH:$(du "$HOME/git/dotfiles/scripts" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH
export PERL5LIB="/home/jco/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="/home/jco/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"/home/jco/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/home/jco/perl5"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/tmp/lib/
export LIBVA_DRIVER_NAME=vdpau
export JAVA_HOME=/usr/lib/jvm/default

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

# Start ssh agent
eval "$(ssh-agent -s)" &> /dev/null
[ -f ~/.ssh/github ] && ssh-add -q ~/.ssh/github
