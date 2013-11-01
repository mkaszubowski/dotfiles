# Description
* oh-my-fish (but you need to install fish2 manually) & oh-my-zsh
* some useful fish and zsh aliases, options
* my custom .gitconfig and .gitignore_global
* some useful tweaks in .pryrc, .rspec, .bashrc, .zshrc

### How to install?
```bash
curl https://raw.github.com/jtomaszewski/.dotfiles/master/init.sh > /tmp/init.sh && sh /tmp/init.sh
```

### Scripts description
* init.sh - bootstraps all (update.sh, install.sh and changes the default shell). Everything is done by a user prompt dialog - don't worry, it won't do antyhing if you keep pressing `n`.
* install.sh - installs required libraries. sudo rights needed.
* update.sh - updates the .dotfiles repo from origin/master and runs `create_symlinks.sh`
* create_symlinks.sh - creates the symlinks to dotfiles, moving the existing to ./old/ directory

#### Powerline font support
This will be needed if you want to use better themes that need modified fonts (f.e. oh-my-fish: slimakthe fish, bobthefish, agnoster, oh-my-zsh: agnoster).

Python required.
Installation: http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin


# Thanks to
* http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
* http://crosbymichael.com/remote-development.html



