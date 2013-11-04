# This file is ran in both bash and zsh.

if [ -d "$HOME/.local/bin" ]
then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.bin" ]
then
    PATH="$HOME/.bin:$PATH"
fi

if [ -f "$HOME/.dotfiles/custom/profile" ]
then
    source "$HOME/.dotfiles/custom/profile"
fi

alias t=tmux
