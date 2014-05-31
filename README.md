# Description
* 3 tweaked shells: oh-my-fish, oh-my-zsh, bash-it. Default is **bash**, but if you'll install **zsh** or **fish2**, it will be tweaked automatically. `bash_profile` is configured in a way that it launches zsh automatically, if it exists on the machine.
* useful shell aliases
* my custom .gitconfig and .gitignore_global
* some useful tweaks in .pryrc, .rspec, .bashrc, .zshrc, tmux.conf, dir_colors and other files (see them all in `create_symlinks.sh`)

### How to install?
```bash
curl https://raw.githubusercontent.com/jtomaszewski/.dotfiles/master/download.sh > /tmp/download.sh && sh /tmp/download.sh
```

### Scripts description
* init.sh - bootstraps all installation. Everything is done by a user prompt dialog - don't worry, it won't do antyhing if you keep pressing `n`.
* update.sh - updates the .dotfiles repo and run `create_symlinks.sh`
* create_symlinks.sh - creates the symlinks to dotfiles, moving the existing to ./old/ directory

#### Powerline font support
This will be needed if you want to use better themes that need modified fonts (f.e. oh-my-fish: slimakthe fish, bobthefish, agnoster, oh-my-zsh: agnoster).

Python required.
Installation: http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin


# Thanks to
* http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
* http://crosbymichael.com/remote-development.html



