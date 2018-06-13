#!/bin/sh
# https://qiita.com/okamos/items/7f5461814e8ed8916870
ln -sf ~/dotfiles/.abcde.conf ~/.abcde.conf
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.profile ~/.profile
ln -sf ~/dotfiles/config.json ~/.config/powerline-shell/
ln -sf ~/dotfiles/.vimrc ~/.vimrc
if [ ! -d ~/.vim/ftplugin ]; then
	mkdir -p ~/.vim/ftplugin
fi
ln -sf ~/dotfiles/python.vim ~/.vim/ftplugin/python.vim
