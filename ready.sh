#!/bin/bash

echo "install vim"

apt install vim nodejs curl -y

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .vimrc ~/.vimrc
cp -r colors ~/.vim


echo "install clangd"
apt install wget unzip zip -y

wget "https://github.com/clangd/clangd/releases/download/snapshot_20210613/clangd-linux-snapshot_20210613.zip"

unzip clangd-linux-snapshot_20210613.zip

cp clangd_snapshot_20210613/bin/clangd /usr/bin/
cp -r clangd_snapshot_20210613/bin/clang /usr/lib/


