# This file is included in both bash and zsh.

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

alias ai="apt-get install"
alias as="apt search"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export APP_VERSION=2017.02.151557

export PATH="$HOME/.cargo/bin:$PATH"
