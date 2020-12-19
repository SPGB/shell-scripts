#!/bin/bash

# Double check os
os=$(uname -s )
if [ ! $os == 'Linux' ]
then
 echo "Not on linux, it's $os"
 exit
fi

# Initialize a new OS
sudo apt-get update

# Install ZSH, curl, git
sudo apt-get install zsh curl git cargo -y

# Install oh my zshell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# oh my zshell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# lsd
cargo install lsd

# lsd Aliases
echo "
# lsd aliases
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'" >>~/.zshrc

# Reload shell
source ~/.zshrc