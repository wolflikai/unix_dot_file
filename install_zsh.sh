#!/bin/bash

echo "install zsh"
if["$(uname)"=="Darwin"]
then
    brew install -y zsh nodejs npm
fi

if ["$(expr substr $(uname -s) 1 5)"=="Linux"]
then
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

rm ~/.zshrc
cp ./.zshrc ~/.zshrc

