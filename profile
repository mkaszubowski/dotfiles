# This file is shared by both bash and zsh.

export RBENV_ROOT=/$HOME/.rbenv
if [ -d $RBENV_ROOT/bin ]
then
    export PATH="$RBENV_ROOT/bin:$PATH"
    eval "$(rbenv init -)"
fi

if [ -d "$HOME/.local/bin" ]
then
    export PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.bin" ]
then
    export PATH="$HOME/.bin:$PATH"
fi

if [ -f "$HOME/.dotfiles/custom/profile" ]
then
    source "$HOME/.dotfiles/custom/profile"
fi

export EDITOR=vim

alias t=tmux

if ! which apt 2>&1 > /dev/null
then
  alias apt=aptitude
fi
