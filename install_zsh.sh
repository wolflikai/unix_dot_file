#!/bin/bash

echo "install zsh"
if [ "$(uname)" == "Darwin" ]
then
    brew install zsh nodejs npm
else
    apt install -y zsh nodejs npm
fi 

if [ ! -d "$HOME/.oh-my-zsh" ]
then
    echo "install oh my zsh"
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
fi

if [ ! -d "$HOME/.zsh/zsh-syntax-highlighting" ]
then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]
then
    git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

rm ~/.zshrc
cp ./.zshrc ~/.zshrc

