#!/bin/sh

if [ -n `which git` ]; then
  echo "please, install git by running command below:"
  echo "sudo apt-get install -y git-core"
fi

cd $HOME
git clone https://github.com/jtomaszewski/.dotfiles
cd .dotfiles
./update.sh

read -p "do you currently have sudo rights? (y/n)" answer
if [ "$answer" = "y" ] ; then
  sudo apt-get update
  sudo apt-get install -y git-core htop wget curl zsh vim tmux

  # Hub not working yet - install it manually
  # mkdir -p ~/bin/hub
  # curl http://hub.github.com/standalone -sLo ~/bin/hub && chmod +x ~/bin/hub
fi

read -p "Do you want to set default shell? (by chsh - please, don't do it on root!): \"fish\"/\"zsh\"? (type nothing, if you don't want to)" answer
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


