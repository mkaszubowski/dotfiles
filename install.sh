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

# Install fish shell.
# apt-key adv --keyserver keyserver.ubuntu.com --recv-key D880C8E4
# echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/2/Debian_7.0/ ./' > /etc/apt/sources.list.d/fish-shell.list
apt-get install fish
echo "It's propably fish v1. Please, visit fish2 website to see how to isntall it."

mkdir -p ~/bin/hub
curl http://hub.github.com/standalone -sLo ~/bin/hub && chmod +x ~/bin/hub
