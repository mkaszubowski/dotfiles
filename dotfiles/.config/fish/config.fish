if test -d $HOME/.bin
  set -x PATH $HOME/.bin $PATH
end

if test -f $HOME/.dotfiles/custom/config.fish
  source $HOME/.dotfiles/custom/config.fish
end

# Theme
set fish_theme bobthefish

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins rvm bundler rails

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish


# set TERM xterm-256color

if which direnv > /dev/null
  eval (direnv hook fish)
end

set -x EDITOR vim

# Colors in `less`!
# Thanks to:
# - https://github.com/fish-shell/fish-shell/issues/600 (@ridiculousfish)
set -x LESS_TERMCAP_mb \e'[01;31m'       # begin blinking
set -x LESS_TERMCAP_md \e'[01;38;5;74m'  # begin bold
set -x LESS_TERMCAP_me \e'[0m'           # end mode
set -x LESS_TERMCAP_se \e'[0m'           # end standout-mode
set -x LESS_TERMCAP_so \e'[38;5;246m'   # begin standout-mode - info box
set -x LESS_TERMCAP_ue \e'[0m'           # end underline
set -x LESS_TERMCAP_us \e'[04;38;5;146m' # begin underline

set -gx PATH /usr/local/bin $PATH
