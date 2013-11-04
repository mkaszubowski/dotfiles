# Replace login shell from bash with zsh. (cuz we don't always have rights to run chsh)
if [ -f $(which zsh) ]
then
  SHELL=$(which zsh) exec $(which zsh) --login
fi
