if [ -f $(which zsh) ]
then
  SHELL=$(which zsh) exec $(which zsh) --login
fi
