#!/bin/bash

apt-get update
apt-get install -y git-core htop wget curl tmux zsh \
    gcc g++ build-essential make automake \
    irssi python python-dev libc6-dev autoconf \
    bison cpp gawk gdb gettext \
    ncurses-dev mercurial lxc aufs-tools  \
    supervisor iotop nmap socat libbz2-dev \
    libreadline-dev tcpflow ruby rubygems \
    ranger sysstat

# Hub not working yet
# mkdir -p ~/bin/hub
# curl http://hub.github.com/standalone -sLo ~/bin/hub && chmod +x ~/bin/hub
