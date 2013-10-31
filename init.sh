#!/bin/bash

# ssh michael@xxx "wget https://raw.github.com/jtomaszewski/.dotfiles/master/init.sh && chmod +x init.sh && sudo ./init.sh michael"

# sudo apt-get install -y git-core

cd $HOME
git clone https://github.com/jtomaszewski/.dotfiles
cd .dotfiles/
git submodule update --init --recursive

sudo ./install.sh

chsh -s /usr/bin/fish
./create_symlinks.sh

echo "All done"
