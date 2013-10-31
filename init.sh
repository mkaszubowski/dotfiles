#!/bin/bash

# sudo apt-get install -y git-core

cd $HOME
git clone https://github.com/jtomaszewski/.dotfiles

cd .dotfiles
./update.sh

read -p "Run install.sh (need sudo rights)? [yn]" answer
if [[ $answer = y ]] ; then
  sudo ./install.sh
fi

read -p "default shell: fish/zsh? [yn]" answer
if [[ $answer = 'zsh' ]] ; then
  if [[ which zsh ]]; then
    chsh -s `which zsh`
  else
    echo "no zsh isntalled!"
  fi
else
  echo "NOTE: you need to install fish2 manually (see their website)"
  if [[ which fish ]]; then
    echo "no fish installed!"
  else
    chsh -s /usr/bin/fish
  fi
fi

echo "All done"
