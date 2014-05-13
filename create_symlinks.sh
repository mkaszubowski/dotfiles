#!/bin/bash

timestamp() {
  date +"%s"
}

########## Config
DOTFILES_REPOSITORY_DIR="$HOME/.dotfiles"
DOTFILES_DIR="$DOTFILES_REPOSITORY_DIR/dotfiles"
BACKUP_DIR="$DOTFILES_REPOSITORY_DIR/old/`timestamp`"
##########

echo "Existing dotfiles will be moved to $BACKUP_DIR."
mkdir -p $BACKUP_DIR

for file in $DOTFILES_DIR/.* $DOTFILES_DIR/*; do
  filename=`basename $file`
  source="$file"
  target="$HOME/$filename"
  backup="$BACKUP_DIR/$filename"
  
  echo "Creating symlink to \"$filename\" in home directory."

  # Remove if it's a symlink
  if [[ -h $target ]]; then
    echo "Existing symlink to \"$filename\" has been removed."
    rm $target
  fi

  # Move, if it exists
  if [[ -e $target ]]; then
    echo "Existing \"$filename\" has been moved to \"$BACKUP_DIR\"."
    rm -rf $backup
    mv $target $backup
  fi

  ln -s $source $target 
done
