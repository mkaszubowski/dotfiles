#!/bin/bash

cd $HOME/.dotfiles
git pull --force
git submodule update --init --recursive --remote
./create_symlinks.sh
