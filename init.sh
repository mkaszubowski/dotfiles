#!/bin/sh

# sudo apt-get install -y git-core

cd $HOME
git clone https://github.com/jtomaszewski/.dotfiles
cd .dotfiles
./update.sh

read -p "run install.sh? (needed sudo rights)" answer
if [[ "$answer" = "y" ]] ; then
  sudo ./install.sh
fi

read -p "default shell: fish/zsh? [yn]" answer
if [ "$answer" = "zsh" ]; then
  if [ -n `which zsh` ]; then
    chsh -s `which zsh`
  else
    echo "no zsh isntalled!"
  fi
elif [ "$answer" = "fish" ]; then
  echo "NOTE: you need to install fish2 manually (see their website)"
  if [ -n `which fish` ]; then
    chsh -s /usr/bin/fish
  else
    echo "no fish installed!"
  fi
fi

echo "All done"
