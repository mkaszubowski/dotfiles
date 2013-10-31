#!/bin/bash

# curl https://raw.github.com/jtomaszewski/.dotfiles/master/init.sh | sh

# sudo apt-get install -y git-core

cd $HOME
git clone https://github.com/jtomaszewski/.dotfiles

./update.sh

read -p "Run install.sh script?" -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
  sudo ./install.sh
fi

chsh -s /usr/bin/fish

echo "All done"
