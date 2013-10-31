#!/bin/bash

# curl https://raw.github.com/jtomaszewski/.dotfiles/master/init.sh | sh

# sudo apt-get install -y git-core

cd $HOME
git clone https://github.com/jtomaszewski/.dotfiles

cd .dotfiles
./update.sh

read -p "Run install.sh? [yn]" answer
if [[ $answer = y ]] ; then
  sudo ./install.sh
fi

read -p "default shell: fish/zsh? [yn]" answer
if [[ $answer = 'zsh' ]] ; then
  chsh -s `which zsh`
else
  chsh -s /usr/bin/fish
fi

echo "All done"
