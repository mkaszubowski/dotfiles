#!/bin/bash

########## Config
dir=$HOME/.dotfiles
backup_dir=$dir/old

# list of files/folders to symlink in homedir
files="gitconfig gitignore_global config/fish pryrc rspec bashrc bash_aliases"
##########

echo "Existing dotfiles will be moved to $backup_dir."
mkdir -p $backup_dir

for file in $files; do
  symlink=$backup_dir/.$file
  if [[ -h $symlink ]]; then
    rm $symlink
  fi
  if [[ -e $symlink ]]; then
    mv $symlink $backup_dir/.$file
  fi

  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file $symlink
done
