#!/bin/bash

########## Config
dir=$HOME/.dotfiles
backup_dir=$dir/old

# list of files/folders to symlink in homedir
files="gitconfig gitignore_global config/fish pryrc rspec bashrc bash_aliases oh-my-fish oh-my-zsh zshrc profile bash_profile"
##########

echo "Existing dotfiles will be moved to $backup_dir."
mkdir -p $backup_dir

mkdir -p $backup_dir/config
mkdir -p $HOME/.config

for file in $files; do
  source=$dir/$file
  target=$HOME/.$file
  backup=$backup_dir/$file
  
  if [[ -h $target ]]; then
    rm $target
  fi
  if [[ -e $target ]]; then
    rm -rf $backup
    mv $target $backup
  fi

  echo "Creating symlink to $file in home directory."
  ln -s $source $target 
done
